namespace Content.SIS.Server.PsiPka;

[RegisterComponent]
public sealed partial class PsiPkaComponent : Component
{
    [DataField("strikeActionEntity")]
    public EntityUid? StrikeActionEntity;

    [DataField("strikeAction")]
    public string StrikeAction = "ActionPsionikStrike";
}
