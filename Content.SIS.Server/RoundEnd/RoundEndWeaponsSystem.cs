using Content.Server.Hands.Systems;
using Content.Server.Popups;
using Content.Shared.CombatMode.Pacification;
using Content.Shared.GameTicking;
using Content.Shared.Hands.Components;
using Content.Shared.Popups;
using Content.Shared.Random;
using Content.Shared.Random.Helpers;
using Content.SIS.Common.CCVar;
using Robust.Shared.Configuration;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;
using Robust.Shared.Random;

namespace Content.SIS.Server.RoundEnd;

public sealed partial class RoundEndWeaponsSystem : EntitySystem
{
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private IPrototypeManager _proto = default!;
    [Dependency] private IRobustRandom _random = default!;
    [Dependency] private HandsSystem _hands = default!;
    [Dependency] private PopupSystem _popup = default!;

    private static readonly ProtoId<WeightedRandomEntityPrototype> EndOfRoundWeapons = "EndOfRoundWeapons";

    private const int LowerBound = 1;
    private const int UpperBound = 10;

    private bool _enabled;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RoundEndMessageEvent>(OnRoundEnd);
        Subs.CVar(_cfg, SIS_CVars.RoundEndWeapons, x => _enabled = x, true);
    }

    private void OnRoundEnd(RoundEndMessageEvent ev)
    {
        if (!_enabled)
            return;

        var proto = _proto.Index(EndOfRoundWeapons);
        if (proto.Weights.Count == 0)
            return;

        var random = new RobustRandom();
        var randomNumber = random.Next(LowerBound, UpperBound);
        var randomMessage = Loc.GetString($"round-end-weapon-delivery-{randomNumber}");

        var query = EntityQueryEnumerator<ActorComponent, HandsComponent, TransformComponent>();
        while (query.MoveNext(out var uid, out _, out var hands, out var xform))
        {
            RemCompDeferred<PacifiedComponent>(uid);
            var weapon = Spawn(proto.Pick(_random), xform.Coordinates);
            _hands.PickupOrDrop(uid, weapon, handsComp: hands);
            _popup.PopupEntity(randomMessage, uid, PopupType.LargeCaution);
        }
    }
}
