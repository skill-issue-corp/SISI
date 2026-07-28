using Content.Shared.Actions;
using Robust.Shared.Prototypes;
using Robust.Shared.Serialization;

namespace Content.SIS.Shared.Respawn;

[RegisterComponent]
public sealed partial class RespawnComponent : Component
{
    [DataField]
    public EntProtoId RespawnAction = "RespawnAction";

    [DataField]
    public EntityUid? RespawnActionEntity;
}

public sealed partial class RespawnActionEvent : InstantActionEvent;

[Serializable, NetSerializable]
public sealed class RespawnRequestEvent : EntityEventArgs;

[Serializable, NetSerializable]
public enum RespawnUiKey : byte
{
    Key,
}
