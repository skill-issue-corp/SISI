using Content.Server.Chat.Systems;
using Content.Server.GameTicking.Events;
using Content.Server.Mind;
using Content.Server.Power.SMES;
using Content.Shared.Power.Components;
using Content.Shared.Roles;
using Content.Shared.Roles.Components;
using Content.Shared.Roles.Jobs;
using Content.Shared.SSDIndicator;
using Content.SIS.Common.CCVar;
using Robust.Shared.Configuration;
using Robust.Shared.Prototypes;

namespace Content.SIS.Server.LowPop;

public sealed partial class AutoDebugSmes : EntitySystem
{
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private SharedJobSystem _jobSystem = default!;
    [Dependency] private ChatSystem _chat = default!;
    [Dependency] private MindSystem _mindSystem = default!;

    private readonly ProtoId<JobPrototype> _ceId = "ChiefEngineer";
    private readonly ProtoId<DepartmentPrototype> _engiDep = "Engineering";

    private float _timer;
    private readonly TimeSpan _updateInterval = TimeSpan.FromMinutes(5);

    private bool _handled = true;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RoundStartingEvent>(OnRoundStarting);
    }

    private void OnRoundStarting(RoundStartingEvent args)
    {
        _timer = 0;
        _handled = false;
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        if (!_cfg.GetCVar(SIS_CVars.AutoDebug) || _handled)
            return;

        _timer += frameTime;
        if (_timer < _updateInterval.TotalSeconds)
            return;
        _timer = 0;

        var jobCount = 0;
        var engiCount = 0;

        var playersQuery = EntityQueryEnumerator<SSDIndicatorComponent>();
        while (playersQuery.MoveNext(out var uid, out var ssdIndicatorComp))
        {
            if (ssdIndicatorComp.IsSSD)
                continue;

            if (!_mindSystem.TryGetMind(uid, out _, out var mindComp))
                continue;

            ProtoId<JobPrototype>? jobPrototype = null;
            foreach (var role in mindComp.MindRoleContainer.ContainedEntities)
            {
                if (!TryComp<MindRoleComponent>(role, out var comp))
                    continue;

                jobPrototype = comp.JobPrototype;
                break;
            }

            if (jobPrototype is not {} job)
                continue;

            if (!_jobSystem.TryGetDepartment(job, out var department))
                continue;

            jobCount++;
            if (job == _ceId || _engiDep == department)
                engiCount++;
        }

        var lowPopLimit = _cfg.GetCVar(SIS_CVars.LowPopLimit);
        var engiLowPopLimit = _cfg.GetCVar(SIS_CVars.EngiLowPopLimit);

        if (jobCount >= lowPopLimit || engiCount >= engiLowPopLimit)
            return;

        var smesQuery = EntityQueryEnumerator<SmesComponent>();
        while (smesQuery.MoveNext(out var uid, out _))
        {
            var recharger = EnsureComp<BatterySelfRechargerComponent>(uid);
            var battery = EnsureComp<BatteryComponent>(uid);

            recharger.AutoRechargeRate = battery.MaxCharge;
            recharger.AutoRechargePauseTime = TimeSpan.Zero;
            Dirty(uid, recharger);
        }

        _chat.DispatchGlobalAnnouncement(Loc.GetString("auto-debug-smes-announcement"), colorOverride: Color.Yellow);
        _handled = true;
    }
}
