using Robust.Shared.Timing;

namespace Content.SIS.Shared.Respawn;

public abstract class SharedRespawnSystem : EntitySystem
{
    [Dependency] private readonly IGameTiming _timing = default!;

    public TimeSpan GetRespawnCooldown(RespawnStatusComponent comp)
    {
        var requiredTime = comp.TimeToUnlockRespawn + comp.TimeOfDeath;
        var cooldown = requiredTime - _timing.CurTime;
        return cooldown;
    }
}
