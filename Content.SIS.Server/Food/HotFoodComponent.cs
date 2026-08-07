using Content.Shared.FixedPoint;

namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class HotFoodComponent : Component
{
    [DataField]
    public TimeSpan CurrentCoolTime  = TimeSpan.FromSeconds(180);
}
