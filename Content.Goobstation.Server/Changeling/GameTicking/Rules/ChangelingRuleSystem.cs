// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Text;
using Content.Goobstation.Shared.Changeling.Components;
using Content.Server.Antag;
using Content.Server.GameTicking.Rules;
using Content.Server.Mind;
using Content.Server.Objectives;
using Content.Shared.NPC.Prototypes;
using Content.Shared.NPC.Systems;
using Content.Shared.Roles;
using Content.Shared.Roles.Components;
using Content.Shared.Store;
using Content.Shared.Store.Components;
using Content.Trauma.Common.Silicon;
using Robust.Shared.Audio;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Changeling.GameTicking.Rules;

public sealed partial class ChangelingRuleSystem : GameRuleSystem<ChangelingRuleComponent>
{
    [Dependency] private CommonSiliconSystem _silicon = default!;
    [Dependency] private MindSystem _mind = default!;
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private SharedRoleSystem _role = default!;
    // [Dependency] private SharedUserInterfaceSystem _ui = default!; // inky edit TRAUMA FUCKUP
    [Dependency] private NpcFactionSystem _npcFaction = default!;
    [Dependency] private ObjectivesSystem _objective = default!;

    public readonly SoundSpecifier BriefingSound = new SoundPathSpecifier("/Audio/_Goobstation/Ambience/Antag/changeling_start.ogg");

    public readonly ProtoId<NpcFactionPrototype> ChangelingFactionId = "Changeling";

    public readonly ProtoId<NpcFactionPrototype> NanotrasenFactionId = "NanoTrasen";

    public readonly ProtoId<CurrencyPrototype> Currency = "EvolutionPoint";

    public readonly int StartingCurrency = 10; // have to keep this in sync with MindRoleChangeling manually :( // inky edit

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<ChangelingRuleComponent, AfterAntagEntitySelectedEvent>(OnSelectAntag);
        SubscribeLocalEvent<ChangelingRuleComponent, ObjectivesTextPrependEvent>(OnTextPrepend);
    }

    private void OnSelectAntag(EntityUid uid, ChangelingRuleComponent comp, ref AfterAntagEntitySelectedEvent args)
    {
        MakeChangeling(args.EntityUid, comp, args.Def); // SIS-ChatGreeting
    }

    // SIS-ChatGreeting-Start
    public bool MakeChangeling(EntityUid target, ChangelingRuleComponent rule, AntagSpecifierPrototype proto)
    {
        if (_silicon.IsSilicon(target))
            return false;

        if (!_mind.TryGetMind(target, out var mindId, out var mind))
            return false;

        // briefing
        var name = Name(target) ?? Loc.GetString("generic-unknown-title");

        var theme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry { Theme = theme };

        var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.Orange;
        var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor  ?? hl1;

        var greetingText = Loc.GetString("changeling-role-greeting", ("name", name), ("hl1", hl1), ("hl2", hl2));
        var desc = Loc.GetString("changeling-role-desc", ("hl1", hl1), ("hl2", hl2));

        var briefingShort = Loc.GetString("changeling-role-greeting-short", ("name", name));

        entry.AddSection(Loc.GetString("role-greeting-title"), greetingText, 0);
        entry.AddSection(Loc.GetString("role-greeting-desc-title"), desc, 0);

        _antag.SendBriefing(target, entry);

        if (!_role.MindHasRole<ChangelingRoleComponent>(mindId, out var mr))
        {
            Log.Error($"Changeling {ToPrettyString(target)} had no role!");
            return false;
        }

        var role = mr.Value.Owner;
        AddComp(role, new RoleBriefingComponent { Briefing = briefingShort }, overwrite: true);

        // hivemind stuff
        _npcFaction.RemoveFaction(target, NanotrasenFactionId, false);
        _npcFaction.AddFaction(target, ChangelingFactionId);

        rule.ChangelingMinds.Add(mindId);

        return true;
    }
    // SIS-ChatGreeting-End

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
