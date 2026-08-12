namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class HotFoodComponent : Component
{
    [DataField]
    public float StandartFoodTemperature = 293.15f;
}
