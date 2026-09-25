// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Medical.Common.Body;
using Content.Medical.Shared.Body;
using Content.Shared.Body;
using Content.Shared.Chat;
using Content.Shared.Examine;
using Content.Shared.Mind.Components;
using Content.Shared.Mobs;
using Content.Shared.Polymorph;
using Content.SIS.Common.Radio;
using Content.SIS.Shared.CorticalBorer.Components;
using Robust.Server.Containers;
using Robust.Shared.Containers;
using Robust.Shared.Timing;
using Robust.Shared.Network;
using Robust.Shared.Player;

namespace Content.SIS.Server.CorticalBorer;

public sealed partial class CorticalBorerInfestedSystem : EntitySystem
{
    [Dependency] private ContainerSystem _container = default!;
    [Dependency] private IGameTiming _timing = default!;
    [Dependency] private CorticalBorerSystem _borer = default!;
    [Dependency] private INetManager _netMan = default!;

    [SubscribeLocalEvent]
    private void OnInit(Entity<CorticalBorerInfestedComponent> infested, ref MapInitEvent args)
    {
        infested.Comp.ControlContainer = _container.EnsureContainer<Container>(infested, "ControlContainer");
        infested.Comp.InfestationContainer = _container.EnsureContainer<Container>(infested, "InfestationContainer");
    }

    [SubscribeLocalEvent]
    private void OnExaminedInfested(Entity<CorticalBorerInfestedComponent> infected, ref ExaminedEvent args)
    {
        if (!args.IsInDetailsRange
            || args.Examined != args.Examiner)
            return;

        if (!infected.Comp.Borer.Comp.ControlingHost)
            return;

        if (infected.Comp.ControlTimeEnd is { } cte)
        {
            var timeRemaining = Math.Floor((cte - _timing.CurTime).TotalSeconds);
            args.PushMarkup(Loc.GetString("infested-control-examined", ("timeremaining", timeRemaining)));
        }

        args.PushMarkup(Loc.GetString("cortical-borer-self-examine", ("chempoints", infected.Comp.Borer.Comp.ChemicalPoints)));
    }

    [SubscribeLocalEvent]
    private void OnStateChange(Entity<CorticalBorerInfestedComponent> infected, ref MobStateChangedEvent args)
    {
        if (args.NewMobState != MobState.Dead)
            return;

        if (infected.Comp.Borer.Comp.ControlingHost)
            _borer.EndControl(infected.Comp.Borer);
    }

    [SubscribeLocalEvent]
    private void OnComponentShutdown(Entity<CorticalBorerInfestedComponent> infected, ref ComponentShutdown args)
    {
        if (infected.Comp is not null && infected.Comp.Borer.Comp is not null && infected.Comp.Borer.Comp.ControlingHost)
            _borer.EndControl(infected.Comp.Borer);
    }

    [SubscribeLocalEvent]
    private void OnBodyPartRemoved(Entity<CorticalBorerInfestedComponent> infected, ref OrganGotRemovedEvent args)
    {
        if (TryComp<BodyPartComponent>(args.Target, out var part) &&
            part.PartType == BodyPartType.Head)
        {
            _borer.EndControl(infected.Comp.Borer);
            _borer.TryEjectBorer(infected.Comp.Borer);
        }
    }

    [SubscribeLocalEvent]
    private void OnMindRemoved(Entity<CorticalBorerInfestedComponent> infected, ref MindRemovedMessage args)
    {
        if (infected.Comp.Borer.Comp.ControlingHost)
        {
            _borer.EndControl(infected.Comp.Borer);
            _borer.TryEjectBorer(infected.Comp.Borer);
        }
    }

    [SubscribeLocalEvent]
    private void BorerRadioReceive(Entity<CorticalBorerInfestedComponent> infected, ref RadioMessageHeardEvent args)
    {
        if (TryComp(infected.Comp.Borer, out ActorComponent? borerActor))
        {
            if (args.Msg is not MsgChatMessage msg)
             return;

            _netMan.ServerSendMessage(msg, borerActor.PlayerSession.Channel);
        }
    }

    [SubscribeLocalEvent]
    private void OnPolymorph(Entity<CorticalBorerInfestedComponent> infected, ref PolymorphedEvent args)
    {
        var borer = infected.Comp.Borer;
        _borer.EndControl(borer);
        _borer.TryEjectBorer(borer);
        _borer.InfestTarget(borer, args.NewEntity);
    }
}
