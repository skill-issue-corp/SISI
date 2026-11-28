// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Body;
using Content.Shared.Body.Components;
using Content.Shared.Chemistry.EntitySystems;
using Content.Shared.Chemistry.Reagent;
using Content.Shared.Examine;
using Content.Shared.Humanoid;
using Content.Shared.Interaction;
using Content.Shared.Mind;
using Content.Shared.Mind.Components;
using Content.Shared.Mobs.Components;
using Content.Shared.Mobs.Systems;
using Content.Shared.Popups;
using Content.Shared.Whitelist;
using Content.Trauma.Shared.Chemistry;
using Robust.Shared.Audio.Systems;

namespace Content.Trauma.Shared.Funeral;

/// <summary>
/// Handles marking corpses for funerals with a funeral tool.
/// </summary>
public sealed partial class FuneralAddSystem : EntitySystem
{
    [Dependency] private BodySystem _body = default!;
    [Dependency] private EntityWhitelistSystem _whitelist = default!;
    [Dependency] private MobStateSystem _mobState = default!;
    [Dependency] private SharedAudioSystem _audio = default!;
    [Dependency] private SharedPopupSystem _popup = default!;
    [Dependency] private SharedSolutionContainerSystem _solution = default!;

    private static readonly ProtoId<OrganCategoryPrototype> Head = "Head";
    private static readonly ProtoId<ReagentPrototype> Formaldehyde = "Formaldehyde";

    [SubscribeLocalEvent]
    private void OnBeforeInteract(Entity<FuneralToolComponent> ent, ref BeforeRangedInteractEvent args)
    {
        var user = args.User;
        if (!args.CanReach || args.Target == user || args.Target is not { } target)
            return;

        // check target is dead and humanoid
        if (!HasComp<MobStateComponent>(target) || !HasComp<HumanoidProfileComponent>(target)
        || !_mobState.IsDead(target))
            return;

        // check tool whitelist
        if (_whitelist.IsWhitelistFail(ent.Comp.UserWhitelist, user))
        {
            _popup.PopupEntity("Вы не умеете освящать усопших.", user, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        // check target is not already marked
        if (HasComp<FuneralHolyComponent>(target))
        {
            _popup.PopupEntity("Тело уже освящено.", user, user, PopupType.Small); // SIS-TODO: Анхаркод локали
            return;
        }

        // ensure head exists
        if (_body.GetOrgan(target, Head) is null)
        {
            _popup.PopupEntity("Нельзя освятить тело без головы.", user, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        // check target was not made via cube or is an NPC / unidentified corpse
        if (HasComp<CubeBornComponent>(target) || !TryComp<MindContainerComponent>(target, out var mind) || !mind.HadMind)
        {
            _popup.PopupEntity("Нельзя освятить тело без истории.", user, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        // check target's soul moved on
        if (mind.Mind is { } mindId && Comp<MindComponent>(mindId).UserId != null)
        {
            _popup.PopupEntity("Нельзя освятить тело, пока в нём остаётся душа.", user, user, PopupType.SmallCaution); // SIS-TODO: Анхаркод локали
            return;
        }

        // check for embalming
        if (!TryComp<BloodstreamComponent>(target, out var blood) ||
            !_solution.ResolveSolution(target, blood.BloodSolutionName, ref blood.BloodSolution, out var solution) ||
            !solution.TryGetReagentQuantity(new ReagentId(Formaldehyde, null), out var qty) || qty <= 10)
        {
            _popup.PopupEntity("Теперь забальзамируйте тело с помощью 15 ед. формальдегида.", user, user, PopupType.Small); // SIS-TODO: Анхаркод локали
            return;
        }

        args.Handled = true;

        // fancy schmancy
        PredictedSpawnAtPosition(ent.Comp.EffectProto, Transform(target).Coordinates);
        _audio.PlayPredicted(ent.Comp.SoundPath, target, user);

        // add holy component
        EnsureComp<FuneralHolyComponent>(target);
        _popup.PopupEntity("Освящение завершено.", user, user, PopupType.Medium); // SIS-TODO: Анхаркод локали
    }

    // inspect details for holy comp
    [SubscribeLocalEvent]
    private void OnExamined(EntityUid uid, FuneralHolyComponent comp, ExaminedEvent args)
    {
        args.PushMarkup("[color=yellow]Тело освящено. При кремации из него можно получить святой пепел.[/color]"); // SIS-TODO: Анхаркод локали
    }
}
