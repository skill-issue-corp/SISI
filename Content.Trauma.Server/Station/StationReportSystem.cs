// SPDX-License-Identifier: AGPL-3.0-or-later

using System.Text;
using Content.Shared.Chat;
using Content.Shared.Paper;
using Content.Trauma.Common.CCVar;
using Content.Trauma.Shared.Station;
using Robust.Shared.Configuration;
using Robust.Shared.Timing;

namespace Content.Trauma.Server.Station;

/// <summary>
/// Creates the station report and sends it to all comms consoles on the station.
/// </summary>
public sealed partial class StationReportSystem : EntitySystem
{
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private IGameTiming _timing = default!;
    [Dependency] private PaperSystem _paper = default!;
    [Dependency] private SharedChatSystem _chat = default!;
    [Dependency] private StationTraitsSystem _traits = default!;

    private StringBuilder _sb = new();
    private int _years;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<StationReportComponent, MapInitEvent>(OnMapInit);

        Subs.CVar(_cfg, TraumaCVars.YearOffset, y => _years = y, true);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<StationReportComponent>();
        while (query.MoveNext(out var station, out var comp))
        {
            if (_timing.CurTime < comp.NextReport)
                continue;

            RemCompDeferred(station, comp);

            var text = CreateReport(station);
            var proto = comp.ReportProto;
            var consoles = EntityQueryEnumerator<StationReportTargetComponent>();
            while (consoles.MoveNext(out var uid, out _))
            {
                SpawnReport(uid, proto, text);
            }

            // TODO: custom greenshift/threat level announcement
            _chat.DispatchStationAnnouncement(station,
                "Сводка о состоянии станции была скопирована и распечатана на всех консолях связи.",
                "Станционный Отчёт");
        }
    }

    private void OnMapInit(Entity<StationReportComponent> ent, ref MapInitEvent args)
    {
        ent.Comp.NextReport = _timing.CurTime + ent.Comp.ReportDelay;
    }

    /// <summary>
    /// Generate the station report text.
    /// </summary>
    public string CreateReport(EntityUid station)
    {
        _sb.Clear();
        var date = DateTime.UtcNow.AddYears(_years).ToString("ddd, MMM dd, yyyy");
        _sb.AppendLine($"[bolditalic]Уведомление об угрозе Департамента разведки NanoTrasen, сектор Sol, TCD {date}:[/bolditalic]\n");

        // TODO: actual dynamic gamemode reports lol
        _sb.AppendLine("Уровень угрозы: [bold]Жёлтая Звезда[/bold]");
        _sb.AppendLine("   Уровень угрозы вашего сектора — жёлтая звезда.");
        _sb.AppendLine("   Данные наблюдения показывают достоверный риск вражеской атаки на наши активы в секторе Sol.");
        _sb.AppendLine("   Мы рекомендуем повысить уровень безопасности и сохранять бдительность в отношении потенциальных угроз.\n");

        // TODO: station goals

        _traits.AppendReport(_sb, station);

        _sb.AppendLine($"\n\n[italic]Данное уведомление предназначено для персонала {Name(station)}. Если это не ваша станция, вы обязаны немедленно уничтожить этот документ.[/italic]");

        return _sb.ToString();
    }

    /// <summary>
    /// Spawn a copy of the report for a console.
    /// </summary>
    public void SpawnReport(EntityUid uid, EntProtoId proto, string text)
    {
        var coords = Transform(uid).Coordinates;
        var report = Spawn(proto, coords);
        _paper.SetContent(report, text);
    }
}
