using Content.Shared.FixedPoint;

namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class CoolingComponent : Component
{
    [DataField]
    public TimeSpan CurrentCoolTime  = TimeSpan.FromSeconds(180);
}
