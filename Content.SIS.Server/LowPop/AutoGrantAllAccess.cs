using System.Linq;
using Content.Server.Chat.Systems;
using Content.Server.GameTicking.Events;
using Content.Shared.Access;
using Content.Shared.Access.Systems;
using Content.Shared.Humanoid;
using Content.SIS.Common.CCVar;
using Robust.Shared.Configuration;
using Robust.Shared.Player;
using Robust.Shared.Prototypes;

namespace Content.SIS.Server.LowPop;

public sealed partial class AutoGrantAllAccess : EntitySystem
{
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private ChatSystem _chat = default!;
    [Dependency] private SharedAccessSystem _accessSystem = default!;

    private float _timer;
    private readonly TimeSpan _updateInterval = TimeSpan.FromMinutes(1);
    private bool _handled = true;

    private bool _lowPopFeaturesEnabled;
    private int _lowPopLimit;

    private ProtoId<AccessLevelPrototype>[] _allAccess = default!;

    public override void Initialize()
    {
        base.Initialize();

        Subs.CVar(_cfg, SIS_CVars.LowPopFeatures, x => _lowPopFeaturesEnabled = x, true);
        Subs.CVar(_cfg, SIS_CVars.AllAccessLowPopLimit, x => _lowPopLimit = x, true);

        _allAccess = ProtoMan
            .EnumeratePrototypes<AccessLevelPrototype>()
            .Select(p => new ProtoId<AccessLevelPrototype>(p.ID))
            .ToArray();
    }

    [SubscribeLocalEvent]
    private void OnRoundStarting(RoundStartingEvent args)
    {
        _timer = 0;
        _handled = false;
    }

    [SubscribeLocalEvent]
    private void OnPlayerAttached(PlayerAttachedEvent args)
    {
        if (!_handled)
            return;

        _accessSystem.TrySetTags(args.Entity, _allAccess);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        if (!_lowPopFeaturesEnabled || _handled)
            return;

        _timer += frameTime;
        if (_timer < _updateInterval.TotalSeconds)
            return;
        _timer = 0;

        var crewsQuery = EntityQueryEnumerator<HumanoidProfileComponent>();
        var crewCount = 0;

        while (crewsQuery.MoveNext(out _, out _))
        {
            crewCount++;
        }

        if (crewCount >= _lowPopLimit)
            return;

        foreach (var crew in crewsQuery)
        {
            _accessSystem.TrySetTags(crew, _allAccess);
        }

        _chat.DispatchGlobalAnnouncement(Loc.GetString("auto-grant-all-access-announcement"), colorOverride: Color.Green);
        _handled = true;
    }
}
