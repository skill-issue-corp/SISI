// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Inky.Common.Medical;
using Content.Shared.Body;
using Content.Shared.Ghost;
using Content.Shared.Mind.Components;
using Robust.Shared.Prototypes;
using Robust.Shared.Random;

namespace Content.SIS.Server.Ghost;

public sealed partial class SIS_GhostSpriteStateSystem : EntitySystem
{
    [Dependency] private SharedAppearanceSystem _appearance = default!;
    [Dependency] private BodySystem _body = default!;
    [Dependency] private IRobustRandom _random = default!;

    private static readonly ProtoId<OrganCategoryPrototype> BrainOrganCategory = "Brain";
    private const string GhostSpriteState = "ghost_Autism";

    public override void Initialize()
    {
        SubscribeLocalEvent<SIS_GhostSpriteStateComponent, MindAddedMessage>(OnGhostMindAdded);
    }

    private void OnGhostMindAdded(EntityUid uid, SIS_GhostSpriteStateComponent component, MindAddedMessage args)
    {
        if (_random.Prob(component.Chance))
        {
            SetGhostState(uid, GhostSpriteState);
            return;
        }

        if (args.TransferEntity is { } ent
            && _body.GetOrgan(ent, BrainOrganCategory) is { } brain
            && HasComp<AutismComponent>(brain))
        {
            SetGhostState(uid, GhostSpriteState);
            return;
        }
    }

    private void SetGhostState(EntityUid uid, string state)
    {
        if (TryComp<AppearanceComponent>(uid, out var appearance))
            _appearance.SetData(uid, GhostVisuals.Damage, state, appearance);
    }
}
