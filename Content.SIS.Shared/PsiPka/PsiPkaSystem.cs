using Content.Shared.Actions;

namespace Content.SIS.Server.PsiPka;

public sealed class PsiPkaSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<PsiPkaComponent, GetItemActionsEvent>(GetPsiPkaAction);
    }

    private void GetPsiPkaAction(EntityUid uid, PsiPkaComponent component, GetItemActionsEvent args)
    {
        args.AddAction(ref component.StrikeActionEntity, component.StrikeAction);
    }
}
