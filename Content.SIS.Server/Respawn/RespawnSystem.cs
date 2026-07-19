using Content.Server.GameTicking;
using Content.SIS.Shared.Respawn;
using Content.Shared.Actions;
using Content.Shared.Administration.Logs;
using Content.Shared.Database;
using Content.Shared.Mind;
using Content.Shared.Mind.Components;
using Content.Shared.Mobs;
using Content.Shared.Mobs.Components;
using Robust.Shared.Player;
using Robust.Shared.Timing;

namespace Content.SIS.Server.Respawn;

public sealed class RespawnSystem : SharedRespawnSystem
{
    [Dependency] private readonly SharedActionsSystem _actions = default!;
    [Dependency] private readonly GameTicker _ticker = default!;
    [Dependency] private readonly ISharedAdminLogManager _logManager = default!;
    [Dependency] private readonly SharedUserInterfaceSystem _ui = default!;
    [Dependency] private readonly IGameTiming _timing = default!;
    [Dependency] private readonly SharedMindSystem _mindSystem = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RespawnComponent, MapInitEvent>(OnMapInit);

        SubscribeLocalEvent<RespawnComponent, PlayerAttachedEvent>(OnMindAdded);
        SubscribeLocalEvent<RespawnComponent, MindAddedMessage>(OnMindAdded);

        SubscribeLocalEvent<MindContainerComponent, PlayerAttachedEvent>(CheckNewLife);

        SubscribeLocalEvent<RespawnComponent, RespawnActionEvent>(OnRespawnAction);
        SubscribeNetworkEvent<RespawnRequestEvent>(OnRespawnRequest);
    }

    private void OnMapInit(EntityUid uid, RespawnComponent component, MapInitEvent args)
    {
        _actions.AddAction(uid, ref component.RespawnActionEntity, component.RespawnAction);
    }

    private void OnMindAdded(EntityUid uid, RespawnComponent component, EntityEventArgs args)
    {
        if (!_mindSystem.TryGetMind(uid, out var mindUid, out _)
            || HasComp<RespawnStatusComponent>(mindUid))
            return;

        EnsureComp<RespawnStatusComponent>(mindUid, out var comp);
        comp.TimeOfDeath = _timing.CurTime;
        Dirty(mindUid, comp);
    }

    private void CheckNewLife(EntityUid uid, MindContainerComponent component, ref PlayerAttachedEvent args)
    {
        if (!TryComp<MobStateComponent>(uid, out var comp)
            || comp.CurrentState == MobState.Dead)
            return;

        if (!_mindSystem.TryGetMind(uid, out var mindUid, out _))
            return;

        RemComp<RespawnStatusComponent>(mindUid);
    }

    private void OnRespawnAction(EntityUid uid, RespawnComponent component, RespawnActionEvent args)
    {
        if (args.Handled) return;
        _ui.TryToggleUi(uid, RespawnUiKey.Key, args.Performer);
        args.Handled = true;
    }

    private void OnRespawnRequest(RespawnRequestEvent msg, EntitySessionEventArgs args)
    {
        var playerSession = args.SenderSession;
        var uid = playerSession.AttachedEntity;

        if (uid == null)
            return;

        if (!_mindSystem.TryGetMind(playerSession, out var mindUid, out _)
            || !TryComp<RespawnStatusComponent>(mindUid, out var comp)
            || GetRespawnCooldown(comp).TotalSeconds > 0)
            return;

        RemComp<RespawnStatusComponent>(mindUid);
        _ticker.Respawn(playerSession);
        _logManager.Add(LogType.Respawn, $"{playerSession} used respawn menu");
    }
}
