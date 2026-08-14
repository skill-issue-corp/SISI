namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class HeatableFoodComponent : Component
{
    [DataField]
    public float DefaultFoodTemperature = 293.15f;

    [DataField]
    public float TemperatureReduction = 0.35f;
}
