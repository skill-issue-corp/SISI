namespace Content.SIS.Server.Food;

[RegisterComponent]
public sealed partial class HotFoodComponent : Component
{
    [DataField]
    public float MicrowaveMaxTemperature = 373.15f;

}
