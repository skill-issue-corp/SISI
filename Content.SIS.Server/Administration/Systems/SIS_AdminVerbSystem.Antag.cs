using Content.Server.Antag;
using Content.Shared.Administration;
using Content.Shared.Database;
using Content.Shared.Mind.Components;
using Content.Shared.Verbs;
using Content.Trauma.Server.GameTicking.Rules.Components;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;
using Robust.Shared.Random;
using Robust.Shared.Utility;

namespace Content.SIS.Server.Administration.Systems;

public sealed partial class SIS_AdminVerbSystem
{
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private IRobustRandom _random = default!;

    private static readonly EntProtoId DefaultInsurgencyRule = "InsurgencyShipVariantInsurgents";
    private static readonly EntProtoId InsurgencyTideRule = "InsurgencyShipVariantTide";

    private void AddAdminVerbs(GetVerbsEvent<Verb> args)
    {
        if (!TryComp<ActorComponent>(args.User, out var actor))
            return;

        var player = actor.PlayerSession;

        if (!_adminManager.HasAdminFlag(player, AdminFlags.Fun))
            return;

        if (!HasComp<MindContainerComponent>(args.Target) || !TryComp<ActorComponent>(args.Target, out var targetActor))
            return;

        var targetPlayer = targetActor.PlayerSession;

        var insurgencyRules = new[] { DefaultInsurgencyRule, InsurgencyTideRule };
        var randomInsurgencyRule = _random.Pick(insurgencyRules);
        args.Verbs.Add(new()
        {
            Text = Loc.GetString("admin-verb-text-make-insurgency"),
            Category = VerbCategory.Antag,
            Icon = new SpriteSpecifier.Rsi(new ResPath("/Textures/Clothing/Mask/gas.rsi"), "icon"),
            Act = () =>
            {
                _antag.ForceMakeAntag<InsurgencyRuleComponent>(targetPlayer, randomInsurgencyRule);
            },
            Impact = LogImpact.High,
            Message = Loc.GetString("admin-verb-text-make-insurgency"),
        });
    }
}
