using Content.Server.Antag;
using Content.Server.GameTicking.Rules.Components;
using Content.Server.Roles;
using Content.Shared.Humanoid;
using Content.Shared.Roles.Components;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Server.GameTicking.Rules;

public sealed partial class ThiefRuleSystem : GameRuleSystem<ThiefRuleComponent>
{
    [Dependency] private AntagSelectionSystem _antag = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<ThiefRuleComponent, AfterAntagEntitySelectedEvent>(AfterAntagSelected);

        SubscribeLocalEvent<ThiefRoleComponent, GetBriefingEvent>(OnGetBriefing);
    }

    // Greeting upon thief activation
    private void AfterAntagSelected(Entity<ThiefRuleComponent> mindId, ref AfterAntagEntitySelectedEvent args)
    {
        var ent = args.EntityUid;
        _antag.SendBriefing(ent, MakeGreeting(ent, args.Def)); // SIS-ChatGreeting
    }

    // Character screen briefing
    private void OnGetBriefing(Entity<ThiefRoleComponent> role, ref GetBriefingEvent args)
    {
        var ent = args.Mind.Comp.OwnedEntity;

        if (ent is null)
            return;
        args.Append(MakeBriefing(ent.Value));
    }

    private string MakeBriefing(EntityUid ent)
    {
        var isHuman = HasComp<HumanoidProfileComponent>(ent);
        var briefing = isHuman
            ? Loc.GetString("thief-role-greeting-human")
            : Loc.GetString("thief-role-greeting-animal");

        if (isHuman)
            briefing += "\n \n" + Loc.GetString("thief-role-greeting-equipment") + "\n";

        return briefing;
    }

    // SIS-ChatGreeting-Start
    private GreetingEntry MakeGreeting(EntityUid ent, AntagSpecifierPrototype proto)
    {
        var theme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry { Theme = theme };

        var isHuman = HasComp<HumanoidProfileComponent>(ent);

        var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.Orange;
        var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor  ?? hl1;

        if (isHuman)
        {
            var greeting = Loc.GetString("thief-role-greeting-human", ("hl1", hl1), ("hl2", hl2));
            var equipment = Loc.GetString("thief-role-greeting-equipment", ("hl1", hl1), ("hl2", hl2));

            entry.AddSection(Loc.GetString("role-greeting-title"), greeting, 0);
            entry.AddSection(Loc.GetString("thief-role-greeting-equipment-title"), equipment, 1);
        }
        else
        {
            var animalGreeting = Loc.GetString("thief-role-greeting-animal", ("hl1", hl1), ("hl2", hl2));
            entry.AddSection(Loc.GetString("role-greeting-title"), animalGreeting, 0);
        }

        return entry;
    }
    // SIS-ChatGreeting-End
}
