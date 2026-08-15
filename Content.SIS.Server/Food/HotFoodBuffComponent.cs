using Content.Shared.FixedPoint;

namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class HotFoodBuffComponent : Component
{
    [DataField]
    public FixedPoint2? NutritionalValueMultiplier = 2;

    [ViewVariables(VVAccess.ReadOnly)]
    public FixedPoint2? OldTransferAmount;
}
