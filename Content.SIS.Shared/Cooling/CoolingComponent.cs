namespace Content.SIS.Shared.Cooling;

[RegisterComponent]
public sealed partial class CoolingComponent : Component
{
    // default value
    [DataField]
    public TimeSpan TimeToCooling  = TimeSpan.FromHours(180);
}
