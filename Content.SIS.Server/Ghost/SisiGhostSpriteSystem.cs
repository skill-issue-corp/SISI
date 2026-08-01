// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Inky.Common.Medical;
using Content.Shared.Body;
using Content.Shared.Ghost;
using Content.Shared.Mind.Components;
using Robust.Shared.GameObjects;
using Robust.Shared.Prototypes;
using Robust.Shared.Random;

namespace Content.SIS.Server.Ghost;

/// <summary>
/// С шансом 65% гост спавнится с кастомным спрайтом (sisi_ghost),
/// у игроков с аутизмом — всегда.
/// </summary>
public sealed partial class SisiGhostSpriteSystem : EntitySystem
{
    private const string SisiSpriteState = "Sisi";
    private const float SisiGhostChance = 0.65f;
    private static readonly ProtoId<OrganCategoryPrototype> BrainOrganCategory = "Brain";

    [Dependency] private SharedAppearanceSystem _appearance = default!;
    [Dependency] private BodySystem _body = default!;
    [Dependency] private IRobustRandom _random = default!;

    public override void Initialize()
    {
        SubscribeLocalEvent<GhostComponent, MindAddedMessage>(OnGhostMindAdded);
    }

    private void OnGhostMindAdded(EntityUid uid, GhostComponent component, MindAddedMessage args)
    {
        if (!ShouldUseSisiGhost(args.TransferEntity))
            return;

        if (TryComp<AppearanceComponent>(uid, out var appearance))
            _appearance.SetData(uid, GhostVisuals.Damage, SisiSpriteState, appearance);
    }

    private bool ShouldUseSisiGhost(EntityUid? body)
    {
        if (_random.Prob(SisiGhostChance))
            return true;

        return body is { } ent
            && (HasComp<AutismComponent>(ent) || _body.GetOrgan(ent, BrainOrganCategory) is { } brain
                && HasComp<AutismComponent>(brain));
    }
}
