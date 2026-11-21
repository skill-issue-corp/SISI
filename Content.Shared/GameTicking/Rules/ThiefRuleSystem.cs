using Content.Shared.Antag;
using Content.Shared.GameTicking.Rules.Components;
using Content.Shared.Humanoid;
using Content.Shared.Roles;
using Content.Shared.Roles.Components;
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Shared.GameTicking.Rules;

public sealed partial class ThiefRuleSystem : GameRuleSystem<ThiefRuleComponent>
{
    [Dependency] private AntagSelectionSystem _antag = default!;

    // Greeting upon thief activation
    [SubscribeLocalEvent]
    private void AfterAntagSelected(Entity<ThiefRuleComponent> mindId, ref AfterAntagEntitySelectedEvent args)
    {
        var ent = args.EntityUid;
        _antag.SendBriefing(ent, MakeGreeting(ent, args.Def)); // SIS-ChatGreeting
    }

    // Character screen briefing
    [SubscribeLocalEvent]
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

    // SIS-ChatGreeting Start
    private GreetingEntry MakeGreeting(EntityUid ent, AntagSpecifierPrototype proto)
    {
        var resolvedTheme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry
        {
            Theme = resolvedTheme,
            Sound = proto.Briefing?.Sound,
        };

        var titleHl1 = resolvedTheme.TitleHighlightFirstColor ?? GreetingSystem.ColorFallback;
        var titleHl2 = resolvedTheme.TitleHighlightSecondColor ?? titleHl1;

        var messageHl1 = resolvedTheme.MessageHighlightFirstColor ?? GreetingSystem.ColorFallback;
        var messageHl2 = resolvedTheme.MessageHighlightSecondColor ?? messageHl1;

        var isHuman = HasComp<HumanoidProfileComponent>(ent);
        if (isHuman)
        {
            var greeting = Loc.GetString("thief-role-greeting-human", ("hl1", messageHl1), ("hl2", messageHl2));
            var equipment = Loc.GetString("thief-role-greeting-equipment", ("hl1", messageHl1), ("hl2", messageHl2));

            entry.AddSection(Loc.GetString("role-greeting-title", ("hl1", titleHl1), ("hl2", titleHl2)), greeting);
            entry.AddSection(Loc.GetString("thief-role-greeting-equipment-title", ("hl1", titleHl1), ("hl2", titleHl2)), equipment);
        }
        else
        {
            var animalGreeting = Loc.GetString("thief-role-greeting-animal", ("hl1", messageHl1), ("hl2", messageHl2));
            entry.AddSection(Loc.GetString("role-greeting-title", ("hl1", titleHl1), ("hl2", titleHl2)), animalGreeting);
        }

        return entry;
    }
    // SIS-ChatGreeting End
}
