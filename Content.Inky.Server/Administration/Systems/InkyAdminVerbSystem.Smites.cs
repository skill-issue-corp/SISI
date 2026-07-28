using Content.Goobstation.Server.Administration.Systems;
using Content.Inky.Common.Medical;
using Content.Shared.Administration;
using Content.Shared.Body;
using Content.Shared.Database;
using Content.Shared.Verbs;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;
using Robust.Shared.Utility;

namespace Content.Inky.Server.Administration.Systems;

/// <summary>
/// This handles...
/// </summary>
public sealed partial class InkyAdminVerbSystem
{
    [Dependency] private GoobAdminVerbSystem _goida = default!;

    private static readonly ProtoId<OrganCategoryPrototype> Brain = "Brain";

    private void AddSmiteVerbs(GetVerbsEvent<Verb> args)
    {
        if (!_goida.SmitesAllowed(args))
            return;

        if (!TryComp(args.User, out ActorComponent? actor))
            return;

        var player = actor.PlayerSession;

        if (!_adminManager.HasAdminFlag(player, AdminFlags.Fun))
            return;

        args.Verbs.Add(new()
        {
            Text = Loc.GetString("admin-verbs-smite-autism-name".ToLowerInvariant()),
            Category = VerbCategory.Smite,
            Icon = new SpriteSpecifier.Rsi(new ResPath("/Textures/_Inky/Interface/Inkymed/alerts.rsi"), "autism"),
            Act = () =>
            {
                if (_body.GetOrgan(args.Target, Brain) is { } brain)
                    EnsureComp<AutismComponent>(brain);
            },
            Impact = LogImpact.Extreme,
            Message = Loc.GetString("admin-verbs-smite-autism-desc"),
        });
    }
}
