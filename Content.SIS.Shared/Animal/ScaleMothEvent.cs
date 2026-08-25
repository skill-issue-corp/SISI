using Robust.Shared.Serialization;

namespace Content.SIS.Shared.Animal;

[Serializable, NetSerializable, Virtual]
public class ScaleMothEvent : EntityEventArgs
{
    public NetEntity Uid;
    public ScaleMothEvent(NetEntity uid, bool eatIt)
    {

    }
}
