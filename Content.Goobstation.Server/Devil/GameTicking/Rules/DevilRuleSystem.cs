// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Text;
using Content.Goobstation.Shared.Devil;
using Content.Goobstation.Shared.Roles;
using Content.Server.Antag;
using Content.Server.GameTicking.Rules;
using Content.Server.Mind;
using Content.Server.Objectives;
using Content.Server.Roles;
using Content.Shared.NPC.Prototypes;
using Content.Shared.NPC.Systems;
using Content.Shared.Roles;
using Robust.Shared.Audio;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Devil.GameTicking.Rules;

public sealed partial class DevilRuleSystem : GameRuleSystem<DevilRuleComponent>
{
    [Dependency] private MindSystem _mind = default!;
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private NpcFactionSystem _npcFaction = default!;
    [Dependency] private ObjectivesSystem _objective = default!;
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<DevilRuleComponent, AfterAntagEntitySelectedEvent>(OnSelectAntag);
        SubscribeLocalEvent<DevilRuleComponent, ObjectivesTextPrependEvent>(OnTextPrepend);
        SubscribeLocalEvent<DevilRoleComponent, GetBriefingEvent>(OnGetBrief);
    }

    private void OnSelectAntag(EntityUid uid, DevilRuleComponent comp, ref AfterAntagEntitySelectedEvent args)
    {
        MakeDevil(args.EntityUid, comp, args.Def); // SIS-ChatGreeting
    }

    // SIS-ChatGreeting-Start
    private bool MakeDevil(EntityUid target, DevilRuleComponent rule, AntagSpecifierPrototype proto)
    {
        var devilComp = EnsureComp<DevilComponent>(target);

        SendGreeting(target, proto);

        _npcFaction.RemoveFaction(target, rule.NanotrasenFaction);
        _npcFaction.AddFaction(target, rule.DevilFaction);

        return true;
    }
    // SIS-ChatGreeting-End

    private void OnGetBrief(Entity<DevilRoleComponent> role, ref GetBriefingEvent args)
    {
        var ent = args.Mind.Comp.OwnedEntity;

        if (ent is null)
            return;

        args.Append(MakeBriefing(ent.Value));
    }

    private string MakeBriefing(EntityUid ent)
    {
        return !TryComp<DevilComponent>(ent, out var devilComp)
            ? null!
            : Loc.GetString("devil-role-greeting", ("trueName", devilComp.TrueName), ("playerName", Name(ent)));
    }

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


    // SIS-ChatGreeting-Start
    private void SendGreeting(EntityUid uid, AntagSpecifierPrototype proto)
    {
        if (!TryComp<DevilComponent>(uid, out var devilComp))
            return;

        var theme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry { Theme = theme };

        var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.Orange;
        var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor  ?? hl1;

        var greetingText = Loc.GetString("devil-role-greeting", ("trueName", devilComp.TrueName), ("playerName", Name(uid)), ("hl1", hl1), ("hl2", hl2));
        var descText = Loc.GetString("devil-role-desc", ("hl1", hl1), ("hl2", hl2));

        entry.AddSection(Loc.GetString("role-greeting-title"), greetingText, 0);
        entry.AddSection(Loc.GetString("role-greeting-desc-title"), descText, 1);

        _antag.SendBriefing(uid, entry, proto.Briefing?.Sound);
    }
    // SIS-ChatGreeting-End
}
