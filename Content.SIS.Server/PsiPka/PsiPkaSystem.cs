using Content.Shared.Actions;

namespace Content.SIS.Server.PsiPka;

public sealed partial class PsiPkaSystem : EntitySystem
{
    [SubscribeLocalEvent]
    private void GetPsiPkaAction(EntityUid uid, PsiPkaComponent component, GetItemActionsEvent args)
    {
        args.AddAction(ref component.StrikeActionEntity, component.StrikeAction);
    }
}
