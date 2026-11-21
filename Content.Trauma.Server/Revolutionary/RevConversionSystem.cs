// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Server.GameTicking.Rules;
using Content.Server.Revolutionary.Components;
using Content.Shared.Antag;
using Content.Trauma.Shared.Revolutionary;
using Robust.Shared.Player;
using Content.SIS.Common.ChatBriefing;

namespace Content.Trauma.Server.Revolutionary;

public sealed partial class RevConversionSystem : EntitySystem
{
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private ServerRevolutionaryRuleSystem _rev = default!;

    // SIS-ChatGreeting
    [Dependency] private IPrototypeManager _proto = default!;
    [Dependency] private GreetingSystem _greeting = default!;
    private static readonly ProtoId<AntagSpecifierPrototype> HeadRevAntag = "HeadRev";

    [SubscribeLocalEvent]
    private void OnRevConverted(ref RevConvertedEvent args)
    {
        if (TryComp<ActorComponent>(args.Target, out var actor))
        {
            var entry = _greeting.CreateGreetingEntry("rev-", _proto.Index(HeadRevAntag).Briefing);
            entry.Sound ??= args.Target.Comp.RevStartSound;
            _antag.SendBriefing(actor.PlayerSession, entry);
        }

        if (!TryComp<CommandStaffComponent>(args.Target, out var command))
            return;

        command.Enabled = false;
        _rev.CheckCommandLose();
    }
}
