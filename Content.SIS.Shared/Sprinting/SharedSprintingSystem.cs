using Content.Goobstation.Common.Movement;
using Content.Shared.Damage.Events;
using Content.Shared.Bed.Sleep;
using Content.Shared.Buckle.Components;
using Content.Shared.Cuffs.Components;
using Content.Shared.Damage.Components;
using Content.Shared.Damage.Systems;
using Content.Shared.Gravity;
using Content.Shared.Input;
using Content.Shared.Mech.Components;
using Content.Shared.Mech.EntitySystems;
using Content.Shared.Mobs;
using Content.Shared.Movement.Systems;
using Content.Shared.Popups;
using Content.Shared.Standing;
using Content.Shared.Stunnable;
using Content.Shared.Zombies;
using Robust.Shared.Audio.Systems;
using Robust.Shared.Input;
using Robust.Shared.Input.Binding;
using Robust.Shared.Physics.Events;
using Robust.Shared.Player;
using Robust.Shared.Timing;
using Content.SIS.Common.CCVar;
using Robust.Shared.Configuration;

namespace Content.SIS.Shared.Sprinting;
public abstract partial class SharedSprintingSystem : EntitySystem
{
    [Dependency] private SharedStaminaSystem _staminaSystem = default!;
    [Dependency] private SharedStunSystem _stun = default!;
    [Dependency] private MovementSpeedModifierSystem _movementSpeed = default!;
    [Dependency] private SharedAudioSystem _audio = default!;
    [Dependency] private SharedGravitySystem _gravity = default!;
    [Dependency] private SharedPopupSystem _popupSystem = default!;
    [Dependency] private IGameTiming _timing = default!;
    [Dependency] private DamageableSystem _damageable = default!;
    [Dependency] private IConfigurationManager _cfg = default!;

    protected bool SprintEnabled;

    public override void Initialize()
    {
        CommandBinds.Builder
            .Bind(ContentKeyFunctions.Sprint, new SprintInputCmdHandler(this))
            .Register<SharedSprintingSystem>();
        SubscribeLocalEvent<SprinterComponent, KnockedDownEvent>(OnSprintDisablingEvent);
        SubscribeLocalEvent<SprinterComponent, StunnedEvent>(OnSprintDisablingEvent);
        SubscribeLocalEvent<SprinterComponent, DownedEvent>(OnSprintDisablingEvent);

        Subs.CVar(_cfg, SIS_CVars.SprintEnabled, value => SprintEnabled = value, true);
    }

    #region Core Functions

    private sealed class SprintInputCmdHandler(SharedSprintingSystem system) : InputCmdHandler
    {
        public override bool HandleCmdMessage(IEntityManager entManager, ICommonSession? session, IFullInputCmdMessage message)
        {
            if (session?.AttachedEntity == null)
                return false;

            system.HandleSprintInput(session, message);
            return false;
        }
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        if (!SprintEnabled)
            return;

        // We dont add it to the EQE since the comp might get added as this runs.
        var query = EntityQueryEnumerator<SprinterComponent, StaminaComponent>();
        while (query.MoveNext(out var uid, out var sprinterComp, out var staminaComp))
        {
            if (!sprinterComp.IsSprinting
                || !sprinterComp.ScaleWithStamina
                || staminaComp.BaseCritThreshold <= 0f)
                continue;

            var modifier = staminaComp.CritThreshold / staminaComp.BaseCritThreshold;
            if (modifier <= 1f)
                continue;

            _staminaSystem.ModifyStaminaDrain(uid,
                sprinterComp.StaminaDrainKey,
                sprinterComp.StaminaDrainRate * modifier * sprinterComp.StaminaDrainMultiplier);
        }
    }

    [SubscribeLocalEvent]
    private void OnRefreshSpeed(Entity<SprinterComponent> ent, ref RefreshMovementSpeedModifiersEvent args)
    {
        if (!ent.Comp.IsSprinting)
            return;

        args.ModifySpeed(ent.Comp.SprintSpeedMultiplier);
    }

    private void HandleSprintInput(ICommonSession? session, IFullInputCmdMessage message)
    {
        if (!SprintEnabled)
            return;

        if (session?.AttachedEntity == null
            || !TryComp<SprinterComponent>(session.AttachedEntity, out var sprinterComponent))
            return;

        if (!sprinterComponent.CanSprint)
        {
            if (message.State == BoundKeyState.Down) // Without this check the message triggers when holding and releasing.
                _popupSystem.PopupClient(Loc.GetString("sprint-disabled"), session.AttachedEntity.Value, session.AttachedEntity.Value, PopupType.Medium);

            return;
        }

        RaiseLocalEvent(session.AttachedEntity.Value, new SprintToggleEvent(!sprinterComponent.IsSprinting && message.State == BoundKeyState.Down));
    }

    [SubscribeLocalEvent]
    private void OnSprintToggle(EntityUid uid, SprinterComponent component, ref SprintToggleEvent args) =>
        ToggleSprint(uid, component, args.IsSprinting);

    public void ToggleSprint(EntityUid uid, SprinterComponent component, bool newSprintState, bool gracefulStop = true)
    {
        // Breaking these into two separate if's for better readability
        if (newSprintState == component.IsSprinting)
            return;

        // Only apply the cooldown if the entity has sprinted before, so the very first sprint after spawning is not delayed.
        if (newSprintState
            && (!CanSprint(uid, component)
            || component.LastSprint != TimeSpan.Zero
            && _timing.CurTime - component.LastSprint < component.TimeBetweenSprints))
            return;

        component.LastSprint = _timing.CurTime;
        component.IsSprinting = newSprintState;

        if (newSprintState)
        {
            RaiseLocalEvent(uid, new SprintStartEvent());
            _audio.PlayPredicted(component.SprintStartupSound, uid, uid);
        }

        if (!gracefulStop)
            _damageable.TryChangeDamage(uid, component.SprintDamageSpecifier);

        _movementSpeed.RefreshMovementSpeedModifiers(uid);
        _staminaSystem.ToggleStaminaDrain(uid, component.StaminaDrainRate, newSprintState, true, component.StaminaDrainKey, uid);
        Dirty(uid, component);
    }

    #endregion

    #region Conditionals

    private bool CanSprint(EntityUid uid, SprinterComponent component)
    {
        // Awaiting on a wizden PR that refactors gravity from whatever the fuck this is.
        if (_gravity.IsWeightless(uid))
        {
            _popupSystem.PopupClient(Loc.GetString("no-sprint-while-weightless"), uid, uid, PopupType.Medium);
            return false;
        }

        var ev = new SprintAttemptEvent();
        RaiseLocalEvent(uid, ref ev);

        return !ev.Cancelled;
    }

    [SubscribeLocalEvent]
    private void OnCuffableSprintAttempt(EntityUid uid, CuffableComponent component, ref SprintAttemptEvent args)
    {
        if (component.CanStillInteract)
            return;

        _popupSystem.PopupClient(Loc.GetString("no-sprint-while-restrained"), uid, uid, PopupType.Medium);
        args.Cancel();
    }

    [SubscribeLocalEvent]
    private void OnStandingStateSprintAttempt(EntityUid uid, StandingStateComponent component, ref SprintAttemptEvent args)
    {
        if (component.Standing)
            return;

        _popupSystem.PopupClient(Loc.GetString("no-sprint-while-lying"), uid, uid, PopupType.Medium);
        args.Cancel();
    }

    [SubscribeLocalEvent]
    private void OnBuckleSprintAttempt(EntityUid uid, BuckleComponent component, ref SprintAttemptEvent args)
    {
        if (component.BuckledTo == null
            || !TryComp<SprinterComponent>(component.BuckledTo, out var sprinterComponent)
            || sprinterComponent.IsSprinting)
            return;

        args.Cancel();
    }

    [SubscribeLocalEvent]
    private void OnMechPilotSprintAttempt(EntityUid uid, MechPilotComponent component, ref SprintAttemptEvent args)
    {
        if (!TryComp<SprinterComponent>(component.Mech, out var sprinterComponent)
            || sprinterComponent.IsSprinting)
            return;

        args.Cancel();
    }

    #endregion

    #region Misc.Handlers
    [SubscribeLocalEvent]
    private void OnBeforeStaminaDamage(EntityUid uid, SprinterComponent component, ref BeforeStaminaDamageEvent args)
    {
        if (!component.IsSprinting
            || args.Value > 0)
            return;

        args.Value *= component.StaminaRegenMultiplier;
    }

    [SubscribeLocalEvent]
    private void OnMobStateChangedEvent(EntityUid uid, SprinterComponent component, MobStateChangedEvent args)
    {
        if (!component.IsSprinting
            || args.NewMobState is MobState.Critical or MobState.Dead)
            return;

        ToggleSprint(args.Target, component, false, gracefulStop: false);
    }

    [SubscribeLocalEvent]
    private void OnSleep(EntityUid uid, SprinterComponent component, ref SleepStateChangedEvent args)
    {
        if (!component.IsSprinting
            || !args.FellAsleep)
            return;

        ToggleSprint(uid, component, false, gracefulStop: false);
    }

    [SubscribeLocalEvent]
    private void OnMechEntry(EntityUid uid, SprinterComponent component, ref MechEntryEvent args)
    {
        if (!component.IsSprinting)
            return;

        ToggleSprint(uid, component, false);
    }

    [SubscribeLocalEvent]
    private void OnToggleWalk(EntityUid uid, SprinterComponent component, ref ToggleWalkEvent args)
    {
        if (!component.IsSprinting)
            return;

        ToggleSprint(uid, component, false);
    }

    private void OnSprintDisablingEvent<T>(EntityUid uid, SprinterComponent component, ref T args) where T : notnull
    {
        if (!component.IsSprinting)
            return;

        ToggleSprint(uid, component, false, gracefulStop: false);
    }

    [SubscribeLocalEvent]
    private void OnZombified(EntityUid uid, SprinterComponent component, ref EntityZombifiedEvent args) =>
        component.SprintSpeedMultiplier *= 0.5f; // We dont want super fast zombies do we?

    [SubscribeLocalEvent]
    private void OnCollide(EntityUid uid, SprinterComponent sprinter, ref StartCollideEvent args)
    {
        var otherUid = args.OtherEntity;

        if (uid == otherUid)
            return;

        if (!sprinter.IsSprinting)
            return;

        if (!TryComp(otherUid, out SprinterComponent? otherSprinter) || !otherSprinter.IsSprinting)
            return;

        _stun.TryKnockdown(uid, sprinter.KnockdownDurationOnInterrupt, refresh: false, drop: false);
        _stun.TryKnockdown(otherUid,
            otherSprinter.KnockdownDurationOnInterrupt,
            refresh: false,
            drop: false);
    }
    #endregion
}
