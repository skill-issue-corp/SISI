using Robust.Shared.GameStates;

namespace Content.SIS.Shared.Respawn;

[RegisterComponent, NetworkedComponent, AutoGenerateComponentState]
public sealed partial class RespawnStatusComponent : Component
{
    [DataField]
    public TimeSpan TimeToUnlockRespawn = TimeSpan.FromMinutes(10);

    [DataField, AutoNetworkedField]
    public TimeSpan TimeOfDeath;
}
