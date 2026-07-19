using Robust.Shared.Timing;

namespace Content.SIS.Shared.Respawn;

public abstract partial class SharedRespawnSystem : EntitySystem
{
    [Dependency] private IGameTiming _timing = default!;

    public TimeSpan GetRespawnCooldown(RespawnStatusComponent comp)
    {
        var requiredTime = comp.TimeToUnlockRespawn + comp.TimeOfDeath;
        var cooldown = requiredTime - _timing.CurTime;
        return cooldown;
    }
}
