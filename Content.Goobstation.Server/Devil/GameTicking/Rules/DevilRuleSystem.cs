// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Text;
using Content.Goobstation.Shared.Devil;
using Content.Goobstation.Shared.GameTicking.Rules;
using Content.Goobstation.Shared.Roles;
using Content.Server.Objectives;
using Content.Shared.Antag;
using Content.Shared.GameTicking.Rules;
using Content.Shared.Mind;
using Content.Shared.NPC.Prototypes;
using Content.Shared.NPC.Systems;
using Content.Shared.Roles;
using Robust.Shared.Audio;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Devil.GameTicking.Rules;

public sealed partial class DevilRuleSystem : GameRuleSystem<DevilRuleComponent>
{
    [Dependency] private GreetingSystem _greeting = default!; // SIS-ChatGreeting
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private NpcFactionSystem _npcFaction = default!;
    [Dependency] private SharedMindSystem _mind = default!;
    [Dependency] private ObjectivesSystem _objective = default!;

    [SubscribeLocalEvent]
    private void OnSelectAntag(EntityUid uid, DevilRuleComponent comp, ref AfterAntagEntitySelectedEvent args)
    {
        MakeDevil(args.EntityUid, comp, args.Def); // SIS-ChatGreeting
    }

    private bool MakeDevil(EntityUid target, DevilRuleComponent rule, AntagSpecifierPrototype proto) // SIS-ChatGreeting
    {
        var devilComp = EnsureComp<DevilComponent>(target);

        // SIS-ChatGreeting Start
        (string, object)[] args = [("trueName", devilComp.TrueName), ("playerName", Name(target))];
        var entry = _greeting.CreateGreetingEntry("devil-", proto.Briefing, args);
        entry.Sound ??= rule.BriefingSound;
        _antag.SendBriefing(target, entry);
        // SIS-ChatGreeting End

        _npcFaction.RemoveFaction(target, rule.NanotrasenFaction);
        _npcFaction.AddFaction(target, rule.DevilFaction);

        return true;
    }

    [SubscribeLocalEvent]
    private void OnGetBrief(Entity<DevilRoleComponent> role, ref GetBriefingEvent args)
    {
        if (args.Mind.Comp.OwnedEntity is not { } mob)
            return;

        args.Append(MakeBriefing(mob));
    }

    private string MakeBriefing(EntityUid ent)
        => !TryComp<DevilComponent>(ent, out var devil)
            ? string.Empty
            : Loc.GetString("devil-role-greeting", ("trueName", devil.TrueName), ("playerName", Name(ent)), ("hl1", GreetingSystem.ColorFallback), ("hl2", GreetingSystem.ColorFallback));

    [SubscribeLocalEvent]
    private void OnTextPrepend(EntityUid uid, DevilRuleComponent comp, ref ObjectivesTextPrependEvent args)
    {
        var mostContractsName = string.Empty;
        var mostContracts = 0f;

        var query = EntityQueryEnumerator<DevilComponent>();
        while (query.MoveNext(out var devil, out var devilComp))
        {
            if (!_mind.TryGetMind(devil, out var mindId, out var mind))
                continue;

            var metaData = MetaData(devil);
            if (devilComp.Souls < mostContracts)
                continue;

            mostContracts = devilComp.Souls;
            mostContractsName = _objective.GetTitle((mindId, mind), metaData.EntityName);
        }
        var sb = new StringBuilder();
        sb.AppendLine(Loc.GetString($"roundend-prepend-devil-contracts{(!string.IsNullOrWhiteSpace(mostContractsName) ? "-named" : "")}", ("name", mostContractsName), ("number", mostContracts)));
        args.Text = sb.ToString();
    }
}
