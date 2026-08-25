// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Actions;
using Content.Shared.MedicalScanner;
using Content.Shared.Popups;
using Content.Shared.StatusEffectNew;
using Content.Shared.Coordinates;
using Content.Shared.Damage.Components;
using Content.Shared.Damage.Systems;
using Content.SIS.Shared.CorticalBorer.Components;
using Robust.Shared.Containers;
using Robust.Shared.Serialization.Manager;

namespace Content.SIS.Shared.CorticalBorer;

public abstract partial class SharedCorticalBorerSystem : EntitySystem
{
    [Dependency] private StatusEffectsSystem _statusEffects = default!;
    [Dependency] private SharedTransformSystem _transform = default!;
    [Dependency] private ISerializationManager _serManager = default!;
    [Dependency] private DamageableSystem _damage = default!;
    [Dependency] protected SharedPopupSystem _popup = default!;
    [Dependency] protected SharedUserInterfaceSystem _ui = default!;
    [Dependency] protected SharedActionsSystem _actions = default!;
    [Dependency] protected SharedContainerSystem _container = default!;

    public bool CanUseAbility(Entity<CorticalBorerComponent> ent, EntityUid target)
    {
        if (!_statusEffects.HasStatusEffect(target, ent.Comp.CorticalBorerProtection))
            return true;

        _popup.PopupEntity(Loc.GetString("cortical-borer-sugar-block"), ent.Owner, ent.Owner, PopupType.Medium);
        return false;
    }

    public void InfestTarget(Entity<CorticalBorerComponent> ent, EntityUid target)
    {
        var (uid, comp) = ent;

        // Make sure the infected person is infected right
        var infestedComp = EnsureComp<CorticalBorerInfestedComponent>(target);

        // Make sure they get into the target
        if (!_container.Insert(uid, infestedComp.InfestationContainer))
        {
            RemCompDeferred<CorticalBorerInfestedComponent>(target); // oh no it didn't work somehow so remove the comp you just added...
            return;
        }

        // Set up the Borer
        infestedComp.Borer = ent;
        comp.Host = target;

        if (comp.AddOnInfest is not null)
        {
            foreach (var (_, compReg) in comp.AddOnInfest)
            {
                var compType = compReg.Component.GetType();
                if (HasComp(ent, compType))
                    continue;

                var newComp = (Component) _serManager.CreateCopy(compReg.Component, notNullableOverride: true);
                AddComp(ent, newComp, true);
            }
        }

        if (comp.RemoveOnInfest is not null)
        {
            foreach (var (_, compReg) in comp.RemoveOnInfest)
                RemCompDeferred(ent, compReg.Component.GetType());
        }

        if (TryComp<DamageableComponent>(ent, out var damComp))
            _damage.SetAllDamage((ent, damComp), 0);
    }

    public bool TryEjectBorer(Entity<CorticalBorerComponent> ent)
    {
        var (uid, comp) = ent;

        if (ent.Comp.Host is not { } host)
            return false;

        // Make sure they get out of the host
        if (!_container.TryRemoveFromContainer(uid))
            return false;

        // close all the UIs that relate to host
        if (TryComp<UserInterfaceComponent>(ent, out var uic))
        {
            _ui.CloseUi((ent.Owner,uic), HealthAnalyzerUiKey.Key);
            _ui.CloseUi((ent.Owner,uic), CorticalBorerDispenserUiKey.Key);
        }

        RemCompDeferred<CorticalBorerInfestedComponent>(ent.Comp.Host.Value);
        ent.Comp.Host = null;

        if (comp.RemoveOnInfest is not null)
        {
            foreach (var (_, compReg) in comp.RemoveOnInfest)
            {
                var compType = compReg.Component.GetType();
                if (HasComp(ent, compType))
                    continue;

                var newComp = (Component) _serManager.CreateCopy(compReg.Component, notNullableOverride: true);
                AddComp(ent, newComp, true);
            }
        }

        if (comp.AddOnInfest is not null)
        {
            foreach (var (_, compReg) in comp.AddOnInfest)
                RemCompDeferred(ent, compReg.Component.GetType());
        }

        return true;
    }

    public void LayEgg(Entity<CorticalBorerComponent> ent)
    {
        if (ent.Comp.Host is not { } host)
            return;

        if (ent.Comp.EggProto is not {} egg)
            return;

        var coordinates = _transform.ToMapCoordinates(host.ToCoordinates());
        Spawn(egg, coordinates);
    }
}
