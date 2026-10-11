using Content.Trauma.Common.MartialArts;
using Content.Shared.Movement.Pulling.Components;
using Content.Shared.Standing;

namespace Content.Shared.Movement.Pulling.Systems;

public sealed partial class PullingSystem
{
    [Dependency] private StandingStateSystem _standingState = default!;

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
