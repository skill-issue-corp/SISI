using Content.Shared.Antag;
using Content.Shared.GameTicking.Rules.Components;
using Content.Shared.Localizations;
using Content.Shared.Mind;
using Content.Shared.Roles;
using Content.Shared.Roles.Components;
using Content.SIS.Common.ChatBriefing;
using Content.Shared.Station.Systems;

namespace Content.Shared.GameTicking.Rules;

public sealed partial class DragonRuleSystem : GameRuleSystem<DragonRuleComponent>
{
    [Dependency] private GreetingSystem _greeting = default!; // SIS-ChatGreeting
    [Dependency] private AntagSelectionSystem _antag = default!;
    [Dependency] private StationSystem _station = default!;
    [Dependency] private SharedMindSystem _mind = default!;
    [Dependency] private SharedRoleSystem _roleSystem = default!;
    [Dependency] private SharedTransformSystem _transform = default!;

    [SubscribeLocalEvent]
    private void UpdateBriefing(Entity<DragonRoleComponent> entity, ref GetBriefingEvent args)
    {
        var ent = args.Mind.Comp.OwnedEntity;

        if(ent is null)
            return;

        // SIS-ChatGreeting Start
        var direction = GetDirectionToStation(ent.Value);
        args.Append(Loc.GetString("dragon-role-briefing", ("direction", direction)));
        // SIS-ChatGreeting End
    }

    [SubscribeLocalEvent]
    private void AfterAntagEntitySelected(Entity<DragonRuleComponent> ent, ref AfterAntagEntitySelectedEvent args)
    {
        if (!_mind.TryGetMind(args.EntityUid, out var mindId, out _))
            return;

        _roleSystem.MindHasRole<DragonRoleComponent>(mindId, out var dragonRole);

        if(dragonRole is null)
            return;

        _antag.SendBriefing(args.EntityUid, MakeGreeting(args.EntityUid, args.Def)); // SIS-ChatGreeting
    }

    // SIS-ChatGreeting Start
    private GreetingEntry MakeGreeting(EntityUid dragon, AntagSpecifierPrototype proto)
    {
        var direction = GetDirectionToStation(dragon);
        return _greeting.CreateGreetingEntry("dragon-", proto.Briefing, ("direction", direction));
    }

    private string GetDirectionToStation(EntityUid dragon)
    {
        var dragonXform = Transform(dragon);

        EntityUid? stationGrid = null;
        if (_station.GetStationInMap(dragonXform.MapID) is { } station)
            stationGrid = _station.GetLargestGrid(station);

        if (stationGrid is not null)
        {
            var stationPosition = _transform.GetWorldPosition(stationGrid.Value);
            var dragonPosition = _transform.GetWorldPosition(dragon);

            var vectorToStation = stationPosition - dragonPosition;
            return ContentLocalizationManager.FormatDirection(vectorToStation.GetDir());
        }

        return Loc.GetString("generic-unknown-title");
    }
    // SIS-ChatGreeting End
}
