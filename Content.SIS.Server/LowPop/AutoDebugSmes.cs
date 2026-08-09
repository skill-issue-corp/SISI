using Content.Server.Chat.Systems;
using Content.Server.Power.SMES;
using Content.Shared.Power.Components;
using Content.Shared.Roles.Components;
using Content.Shared.Roles.Jobs;
using Content.Shared.SSDIndicator;
using Content.SIS.Common.CCVar;
using Robust.Server.Player;
using Robust.Shared.Configuration;

namespace Content.SIS.Server.LowPop;

public sealed partial class AutoDebugSmes : EntitySystem
{
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private IPlayerManager _playerMan = default!;
    [Dependency] private SharedJobSystem _jobSystem = default!;
    [Dependency] private ChatSystem _chat = default!;

    private readonly LocId _engiDep = "department-Engineering";

    private const float DelaySeconds = 1f * 60f;
    private float _timer = 0;

    private bool _handled = false;

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        _timer += frameTime;
        if (_timer < DelaySeconds)
            return;
        _timer = 0;

        if (!_cfg.GetCVar(SIS_CVars.AutoDebug) || _handled)
            return;

        var jobCount = 0;
        var engiCount = 0;

        var playersQuery = EntityQueryEnumerator<SSDIndicatorComponent, MindRoleComponent>();
        while (playersQuery.MoveNext(out _, out var ssdIndicatorComp, out var mindRoleComp))
        {
            if (ssdIndicatorComp.IsSSD)
                continue;

            if (mindRoleComp.JobPrototype is not {} job)
                continue;

            jobCount++;
            _jobSystem.TryGetDepartment(job.Id, out var department);

            if (_engiDep == department?.Name)
                engiCount++;
        }

        var lowPopLimit = _cfg.GetCVar(SIS_CVars.LowPopLimit);
        var engiLowPopLimit = _cfg.GetCVar(SIS_CVars.EngiLowPopLimit);

        if (jobCount > lowPopLimit || engiCount > engiLowPopLimit)
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
