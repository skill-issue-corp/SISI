// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Server.Antag;
using Content.Server.GameTicking.Rules;
using Content.Server.Revolutionary.Components;
using Content.Trauma.Shared.Revolutionary;
using Robust.Shared.Player;
// SIS
using Content.Shared.Antag;
using Content.SIS.Common.ChatBriefing;

namespace Content.Trauma.Server.Revolutionary;

public sealed partial class RevConversionSystem : EntitySystem
{
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private RevolutionaryRuleSystem _rev = default!;
    // SIS
    [Dependency] private IPrototypeManager _proto = default!;

    private static readonly ProtoId<AntagSpecifierPrototype> BriefingTheme = "HeadRev"; // SIS-ChatGreeting

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RevConvertedEvent>(OnRevConverted);
    }

    private void OnRevConverted(ref RevConvertedEvent args)
    {
        if (TryComp<ActorComponent>(args.Target, out var actor))
        {
            // SIS-ChatGreeting-Start
            var proto = _proto.Index(BriefingTheme);
            var theme = proto.Briefing?.Theme ?? new GreetingTheme();
            var entry = new GreetingEntry { Theme = theme };

            var hl1 = theme.MessageHighlightFirstColor ?? theme.HighlightFirstColor ?? theme.HighlightColor ?? Color.Orange;
            var hl2 = theme.MessageHighlightSecondColor ?? theme.HighlightSecondColor  ?? hl1;

            var greeting = Loc.GetString("rev-role-greeting", ("hl1", hl1), ("hl2", hl2));
            var briefing = Loc.GetString("rev-briefing", ("hl1", hl1), ("hl2", hl2));

            entry.AddSection(Loc.GetString("role-greeting-title"), greeting, 0);
            entry.AddSection(Loc.GetString("role-greeting-desc-title"), briefing, 1);

            _antag.SendBriefing(actor.PlayerSession, entry, args.Target.Comp.RevStartSound);
            // SIS-ChatGreeting-End
        }

        if (!TryComp<CommandStaffComponent>(args.Target, out var command))
            return;

        command.Enabled = false;
        _rev.CheckCommandLose();
    }
}
