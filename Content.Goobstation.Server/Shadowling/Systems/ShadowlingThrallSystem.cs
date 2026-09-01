// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Goobstation.Shared.Devil;
using Content.Goobstation.Shared.Shadowling.Components;
using Content.Goobstation.Shared.Shadowling.Components.Abilities.Thrall;
using Content.Goobstation.Shared.Roles;
using Content.Server.Antag;
using Content.Server.Mind;
using Content.Server.Roles;
using Content.Shared.Examine;
using Content.Shared.IdentityManagement;
using Content.Shared.Overlays;
using Content.Trauma.Common.CollectiveMind;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Goobstation.Server.Shadowling.Systems;

/// <summary>
/// This handles Thralls antag briefing and abilities
/// </summary>
public sealed partial class ShadowlingThrallSystem : EntitySystem
{
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private MindSystem _mind = default!;
    [Dependency] private RoleSystem _roles = default!;
    [Dependency] private ShadowlingSystem _shadowling = default!;
    // SIS
    [Dependency] private IPrototypeManager _proto = default!;

    private static readonly ProtoId<AntagSpecifierPrototype> ShadowlingAntag = "Shadowling"; // SIS-ChatGreeting

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<ThrallComponent, ComponentStartup>(OnStartup);
        SubscribeLocalEvent<ThrallComponent, ComponentShutdown>(OnRemove);
        SubscribeLocalEvent<ThrallComponent, ExaminedEvent>(OnExamined);
    }

    public ProtoId<CollectiveMindPrototype> ShadowMind = "Shadowmind";
    private void OnStartup(EntityUid uid, ThrallComponent component, ComponentStartup args)
    {
        // antag stuff
        if (!_mind.TryGetMind(uid, out var mindId, out _))
            return;

        if (!_roles.MindHasRole<ShadowlingRoleComponent>(mindId))
            _roles.MindAddRole(mindId, "MindRoleThrall");

        EnsureComp<CollectiveMindComponent>(uid).Channels.Add(ShadowMind);

        // SIS-ChatGreeting-Start
        var proto = _proto.Index(ShadowlingAntag);
        var theme = proto.Briefing?.Theme ?? new GreetingTheme();
        var entry = new GreetingEntry { Theme = theme };

        var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.Orange;
        var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor  ?? hl1;

        var greetingText = Loc.GetString("thrall-role-greeting", ("hl1", hl1), ("hl2", hl2));
        var descText = Loc.GetString("thrall-role-greeting-desc", ("hl1", hl1), ("hl2", hl2));

        entry.AddSection(Loc.GetString("role-greeting-title"), greetingText, 0);
        entry.AddSection(Loc.GetString("role-greeting-desc-title"), descText, 1);

        _antag.SendBriefing(uid, entry, component.ThrallConverted);
        // SIS-ChatGreeting-End
    }

    private void OnRemove(EntityUid uid, ThrallComponent component, ComponentShutdown args)
    {
        if (_mind.TryGetMind(uid, out var mindId, out _))
            _roles.MindRemoveRole<ShadowlingRoleComponent>(mindId);

        RemComp<NightVisionComponent>(uid);
        RemComp<ThrallGuiseComponent>(uid);
        RemComp<LesserShadowlingComponent>(uid);

        if (TryComp<CollectiveMindComponent>(uid, out var collective))
            collective.Channels.Remove(ShadowMind);

        if (component.Converter == null)
            return;

        // Adjust lightning resistance for shadowling
        var shadowling = component.Converter.Value;
        if (TryComp<ShadowlingComponent>(shadowling, out var shadowlingComp))
            _shadowling.OnThrallRemoved((shadowling, shadowlingComp));
    }

    private void OnExamined(EntityUid uid, ThrallComponent component, ExaminedEvent args)
    {
        if (HasComp<ShadowlingComponent>(args.Examiner)
            && component.Converter == args.Examiner)
            args.PushMarkup($"[color=red]{Loc.GetString("shadowling-thrall-examined")}[/color]"); // Indicates that it is your Thrall

        var ev = new IsEyesCoveredCheckEvent();
        RaiseLocalEvent(uid, ev);

        if (ev.IsEyesProtected)
            return;

        args.PushMarkup($"[color=pink]{Loc.GetString("shadowling-thrall-other-examined", ("target", Identity.Entity(uid, EntityManager)))}[/color]");
    }
}
