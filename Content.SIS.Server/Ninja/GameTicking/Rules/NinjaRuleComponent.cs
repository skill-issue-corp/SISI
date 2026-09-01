namespace Content.SIS.Server.Ninja.GameTicking.Rules;

[RegisterComponent, Access(typeof(NinjaRuleSystem))]
public sealed partial class NinjaRuleComponent : Component
{
    [ViewVariables(VVAccess.ReadOnly)]
    public EntityUid? TargetStation;
}
