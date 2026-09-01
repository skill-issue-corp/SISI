// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Goobstation.Common.Pirates;
using Content.Goobstation.Shared.Roles;
using Content.Server.Antag;
using Content.Server.GameTicking;
using Content.Server.GameTicking.Rules;
using Content.Server.Mind;
using Content.Server.Roles;
using Content.Shared.GameTicking.Components;
using Content.Shared.NPC.Prototypes;
using Content.Shared.NPC.Systems;
using Robust.Shared.Audio;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Pirates.GameTicking.Rules;

public sealed partial class ActivePirateRuleSystem : GameRuleSystem<ActivePirateRuleComponent>
{
    [Dependency] private MindSystem _mind = default!;
    [Dependency] private RoleSystem _role = default!;
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private NpcFactionSystem _npcFaction = default!;

    private static readonly SoundSpecifier BriefingSound = new SoundPathSpecifier("/Audio/Ambience/Antag/pirate_start.ogg");
    private static readonly EntProtoId MindRole = "MindRolePirate";
    private static readonly ProtoId<NpcFactionPrototype> PirateFaction = "PirateFaction";

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<ActivePirateRuleComponent, AfterAntagEntitySelectedEvent>(OnAntagSelect);
        SubscribeLocalEvent<PirateRoleComponent, GetBriefingEvent>(OnGetBriefing);
    }

    private void OnAntagSelect(Entity<ActivePirateRuleComponent> ent, ref AfterAntagEntitySelectedEvent args)
    {
        if (_mind.TryGetMind(args.EntityUid, out var mindId, out var mind) && TryMakePirate(args.EntityUid, args.Def))
            ent.Comp.Pirates.Add((mindId, mind));
    }

    private void OnGetBriefing(Entity<PirateRoleComponent> ent, ref GetBriefingEvent args)
    {
        var briefingShort = Loc.GetString("antag-pirate-briefing-short");
        args.Briefing = briefingShort;
    }

    protected override void AppendRoundEndText(EntityUid uid, ActivePirateRuleComponent component, GameRuleComponent gameRule, ref RoundEndTextAppendEvent args)
    {
        if (component.BoundSiphon != null
        && TryComp<ResourceSiphonComponent>(component.BoundSiphon, out var siphon)
        && siphon.Active)
            args.AddLine(Loc.GetString("pirate-roundend-append-siphon", ("num", siphon.Credits)));

        args.AddLine(Loc.GetString("pirate-roundend-append", ("num", component.Credits)));

        args.AddLine($"\n{Loc.GetString("pirate-roundend-list")}");
        var antags = _antag.GetAntagIdentifiers(uid);
        foreach (var (_, sessionData, name) in antags)
        {
            // nukies? in my pirate rule? how queer...
            args.AddLine(Loc.GetString("nukeops-list-name-user", ("name", name), ("user", sessionData.UserName)));
        }
    }

    // SIS-ChatGreeting-Start
    public bool TryMakePirate(EntityUid target, AntagSpecifierPrototype proto)
    {
        if (!_mind.TryGetMind(target, out var mindId, out var mind))
            return false;

        _role.MindAddRole(mindId, MindRole.Id, mind, true);

        var theme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry { Theme = theme };

        var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.FromHex("#f59e0b");
        var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor ?? hl1;

        var greetingText = Loc.GetString("antag-pirate-briefing", ("hl1", hl1), ("hl2", hl2));
        var descText = Loc.GetString("antag-pirate-briefing-desc", ("hl1", hl1), ("hl2", hl2));

        entry.AddSection(Loc.GetString("role-greeting-title"), greetingText, 0);
        entry.AddSection(Loc.GetString("role-greeting-desc-title"), descText, 1);

        _antag.SendBriefing(target, entry, BriefingSound);

        _npcFaction.AddFaction(target, PirateFaction); // yaml fucking sucks!!!

        return true;
    }
    // SIS-ChatGreeting-End
}
