namespace Content.SIS.Server.Cooling;

[RegisterComponent]
public sealed partial class CoolingComponent : Component
{
    // default value
    [DataField]
    public TimeSpan TimeToCooling  = TimeSpan.FromHours(180);
}
