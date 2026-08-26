// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Access.Systems;
using Content.Shared.Administration.Logs;
using Content.Shared.Cargo;
using Content.Shared.Database;
using Content.Shared.Popups;
using Content.Shared.Station;
using Robust.Shared.Timing;

namespace Content.Trauma.Shared.Antag;

public abstract partial class SharedAntagSummonerSystem : EntitySystem
{
    [Dependency] private AccessReaderSystem _access = default!;
    [Dependency] private IGameTiming _timing = default!;
    [Dependency] private ISharedAdminLogManager _adminLog = default!;
    [Dependency] private SharedCargoSystem _cargo = default!;
    [Dependency] protected SharedPopupSystem Popup = default!;
    [Dependency] private SharedStationSystem _station = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<AntagSummonerComponent, MapInitEvent>(OnMapInit);
        Subs.BuiEvents<AntagSummonerComponent>(AntagSummonerUiKey.Key, subs =>
        {
            subs.Event<SummonAntagMessage>(OnSummonAntag);
        });
    }

    private void OnMapInit(Entity<AntagSummonerComponent> ent, ref MapInitEvent args)
    {
        ent.Comp.NextSummon = _timing.CurTime + ent.Comp.Cooldown;
        Dirty(ent);
    }

    private void OnSummonAntag(Entity<AntagSummonerComponent> ent, ref SummonAntagMessage args)
    {
        var user = args.Actor;
        if (!_access.IsAllowed(user, ent.Owner))
        {
            Popup.PopupEntity("Доступ запрещён!", ent, user); // SIS-TODO: Анхаркод локали
            return;
        }

        var now = _timing.CurTime;
        if (now < ent.Comp.NextSummon)
        {
            var minutes = (int) Math.Ceiling((ent.Comp.NextSummon - now).TotalMinutes);
            Popup.PopupEntity($"Следующая выдача допуска будет доступна через {minutes} минут(ы)!", ent, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        if (_station.GetOwningStation(ent.Owner) is not {} station)
        {
            Popup.PopupEntity("Вам нужно использовать это на станции!", ent, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        if (!TrySummonAntag(ent, user))
            return;

        ent.Comp.NextSummon = now + ent.Comp.Cooldown;
        Dirty(ent);

        _adminLog.Add(LogType.InteractHand, LogImpact.High, $"{user:user} summoned an antag with {ent:used}!");
        Popup.PopupEntity("Вы нажали красную кнопку...", ent, user, PopupType.LargeCaution); // SIS-TODO: Анхаркод локали
        _cargo.TryAdjustBankAccount(station, ent.Comp.Account, ent.Comp.Reward);
    }

    protected virtual bool TrySummonAntag(Entity<AntagSummonerComponent> ent, EntityUid user)
    {
        // not predicted lol
        return false;
    }
}
