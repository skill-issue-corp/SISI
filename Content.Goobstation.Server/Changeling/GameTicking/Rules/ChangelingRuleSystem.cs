// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Text;
using Content.Goobstation.Shared.Changeling.Components;
using Content.Server.Mind;
using Content.Server.Objectives;
using Content.Shared.Antag;
using Content.Shared.GameTicking.Rules;
using Content.Shared.GameTicking.Rules.Components;
using Content.Shared.NPC.Prototypes;
using Content.Shared.NPC.Systems;
using Content.Shared.Roles;
using Content.Shared.Roles.Components;
using Content.Shared.Store;
using Content.Shared.Store.Components;
using Robust.Shared.Audio;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Changeling.GameTicking.Rules;

public sealed partial class ChangelingRuleSystem : GameRuleSystem<ChangelingRuleComponent>
{
    [Dependency] private MindSystem _mind = default!;
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private SharedRoleSystem _role = default!;
    // [Dependency] private SharedUserInterfaceSystem _ui = default!; // inky edit TRAUMA FUCKUP
    [Dependency] private NpcFactionSystem _npcFaction = default!;
    [Dependency] private ObjectivesSystem _objective = default!;
    [Dependency] private GreetingSystem _greeting = default!; // SIS-ChatGreeting

    public readonly SoundSpecifier BriefingSound = new SoundPathSpecifier("/Audio/_Goobstation/Ambience/Antag/changeling_start.ogg");

    public readonly ProtoId<NpcFactionPrototype> ChangelingFactionId = "Changeling";

    public readonly ProtoId<NpcFactionPrototype> NanotrasenFactionId = "NanoTrasen";

    public readonly ProtoId<CurrencyPrototype> Currency = "EvolutionPoint";

    public readonly int StartingCurrency = 10; // have to keep this in sync with MindRoleChangeling manually :( // inky edit

    [SubscribeLocalEvent]
    private void OnSelectAntag(Entity<ChangelingRuleComponent> ent, ref AfterAntagEntitySelectedEvent args)
    {
        var target = args.EntityUid;
        if (!_mind.TryGetMind(target, out var mindId, out var mind))
            return;

        // briefing
        var name = Name(target) ?? Loc.GetString("generic-unknown-title");
        // SIS-ChatGreeting Start
        var briefingShort = Loc.GetString("changeling-role-greeting-short", ("name", name));
        var entry = _greeting.CreateGreetingEntry("changeling-", args.Def.Briefing, ("name", name));
        entry.Sound ??= BriefingSound;
        _antag.SendBriefing(target, entry);
        // SIS-ChatGreeting End

        if (!_role.MindHasRole<ChangelingRoleComponent>(mindId, out var mr))
        {
            Log.Error($"Changeling {ToPrettyString(target)} had no role!");
            return;
        }

        var role = mr.Value.Owner;
        AddComp(role, new RoleBriefingComponent { Briefing = briefingShort }, overwrite: true);

        // hivemind stuff
        _npcFaction.RemoveFaction(target, NanotrasenFactionId, false);
        _npcFaction.AddFaction(target, ChangelingFactionId);
    }

    [SubscribeLocalEvent]
    private void OnTextPrepend(Entity<ChangelingRuleComponent> ent, ref ObjectivesTextPrependEvent args)
    {
        var mostAbsorbedName = string.Empty;
        var mostStolenName = string.Empty;
        var mostAbsorbed = 0f;
        var mostStolen = 0f;

        // TODO make a ChangelingAbsorbComponent to store data about absorbed DNA and entities
        var query = EntityQueryEnumerator<ChangelingIdentityComponent>();
        while (query.MoveNext(out var uid, out var ling))
        {
            if (!_mind.TryGetMind(uid, out var mindId, out var mind))
                continue;

            var name = Name(uid);
            if (ling.TotalAbsorbedEntities > mostAbsorbed)
            {
                mostAbsorbed = ling.TotalAbsorbedEntities;
                mostAbsorbedName = _objective.GetTitle((mindId, mind), name);
            }
            if (ling.TotalStolenDNA > mostStolen)
            {
                mostStolen = ling.TotalStolenDNA;
                mostStolenName = _objective.GetTitle((mindId, mind), name);
            }
        }

        var sb = new StringBuilder();
        sb.AppendLine(Loc.GetString($"roundend-prepend-changeling-absorbed{(!string.IsNullOrWhiteSpace(mostAbsorbedName) ? "-named" : "")}", ("name", mostAbsorbedName), ("number", mostAbsorbed)));
        sb.AppendLine(Loc.GetString($"roundend-prepend-changeling-stolen{(!string.IsNullOrWhiteSpace(mostStolenName) ? "-named" : "")}", ("name", mostStolenName), ("number", mostStolen)));

        args.Text = sb.ToString();
    }
}
