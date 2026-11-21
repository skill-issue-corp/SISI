// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Server.Administration.Systems;
using Content.Shared.Database;
using Content.Shared.Verbs;
using Robust.Shared.Player;
using Content.Shared.Antag;
using Content.Shared.PAI;
using Content.Shared.Silicons.Borgs.Components;
using Content.Shared.Silicons.StationAi;
using Content.Shared.Mind.Components;
using Content.Goobstation.Shared.GameTicking.Rules;

namespace Content.Goobstation.Server.Administration.Systems;

public sealed partial class GoobAntagSmiteSystem : EntitySystem
{
    [Dependency] private AntagSelectionSystem _antag = default!; // SIS-TODO: Портануть фикс Блоба Травме

    private static readonly EntProtoId BlobRule = "BlobGameMode"; // SIS-TODO: Портануть фикс Блоба Травме

    [SubscribeLocalEvent]
    private void OnGetAntagVerbs(ref GetAntagVerbsEvent args)
    {
        var target = args.Target;
        if (HasComp<BorgChassisComponent>(target) || HasComp<StationAiHeldComponent>(target) || HasComp<PAIComponent>(target))
            return;

        // SIS-TODO: Портануть фикс Блоба Травме Start
        if (!HasComp<MindContainerComponent>(target) || !TryComp<ActorComponent>(target, out var targetActor))
            return;

        var targetPlayer = targetActor.PlayerSession;
        // SIS-TODO: Портануть фикс Блоба Травме End

        // Blob
        args.Verbs.Verbs.Add(new()
        {
            Text = Loc.GetString("admin-verb-text-make-blob"),
            Category = VerbCategory.Antag,
            Icon = new SpriteSpecifier.Rsi(new("_Goobstation/Blob/Actions/blob.rsi"), "blobFactory"),
            Act = () =>
            {
                _antag.ForceMakeAntag<BlobRuleComponent>(targetPlayer, BlobRule); // SIS-TODO: Портануть фикс Блоба Травме
            },
            Impact = LogImpact.High,
            Message = Loc.GetString("admin-verb-text-make-blob"),
        });
    }
}
