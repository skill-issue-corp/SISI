using Content.Trauma.Common.MartialArts;
using Content.Shared.Movement.Pulling.Components;
using Content.Shared.Standing;
using Robust.Shared.Physics;
using Robust.Shared.Physics.Components;

namespace Content.Shared.Movement.Pulling.Systems;

public sealed partial class PullingSystem
{
    [Dependency] private StandingStateSystem _standingState = default!;

    // SIS-TODO: Проверить вайбкод Start
    /// <summary>
    /// How much lighter the pulled entity gets while it's in a soft grab, as a fraction of its normal
    /// mass. The pull joint splits its force by inverse mass, so a much lighter pulled entity lets the
    /// joint move it while the puller barely loses any speed.
    /// </summary>
    private const float SoftGrabMassFactor = 0.05f;

    private readonly HashSet<EntityUid> _softGrabLightened = new();

    /// <summary>
    /// Temporarily scales the pulled entity's fixtures mass while it is in a soft grab and restores it
    /// afterwards. This is what removes the "weight" of dragging someone.
    /// </summary>
    private void SetSoftGrabWeight(EntityUid pullableUid, bool light)
    {
        if (_softGrabLightened.Contains(pullableUid) == light)
            return;

        if (!TryComp<FixturesComponent>(pullableUid, out var fixtures) ||
            !TryComp<PhysicsComponent>(pullableUid, out var body))
            return;

        var factor = light ? SoftGrabMassFactor : 1f / SoftGrabMassFactor;
        foreach (var (id, fixture) in fixtures.Fixtures)
        {
            if (fixture.Density <= 0f)
                continue;

            _physics.SetDensity(pullableUid, id, fixture, fixture.Density * factor, update: false, fixtures);
        }

        _physics.ResetMassData(pullableUid, fixtures, body);

        if (light)
            _softGrabLightened.Add(pullableUid);
        else
            _softGrabLightened.Remove(pullableUid);
    }

    [SubscribeLocalEvent]
    private void OnPullableShutdownForWeight(EntityUid uid, PullableComponent component, ComponentShutdown args)
    {
        _softGrabLightened.Remove(uid);
    }
    // SIS-TODO: Проверить вайбкод End

    [SubscribeLocalEvent]
    private void OnPulledDowned(Entity<PullableComponent> ent, ref DownedEvent args)
    {
        RefreshPullerSpeed(ent.Comp);
    }

    [SubscribeLocalEvent]
    private void OnPulledStood(Entity<PullableComponent> ent, ref StoodEvent args)
    {
        RefreshPullerSpeed(ent.Comp);
    }

    private void RefreshPullerSpeed(PullableComponent pullable)
    {
        if (pullable.Puller is { } puller
            && TryComp<PullerComponent>(puller, out var pullerComp)
            && pullerComp.GrabStage == GrabStage.Soft)
        {
            _modifierSystem.RefreshMovementSpeedModifiers(puller);
        }
    }
}
