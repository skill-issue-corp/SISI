using Content.Server.Actions;
using Content.Server.Polymorph.Systems;
using Content.Server.Popups;
using Content.SIS.Shared.Geras;
using Content.Shared.Zombies;
using Robust.Shared.Player;

namespace Content.SIS.Server.Geras;

/// <inheritdoc/>
public sealed partial class GerasSystem : SharedGerasSystem
{
    [Dependency] private PolymorphSystem _polymorphSystem = default!;
    [Dependency] private ActionsSystem _actionsSystem = default!;
    [Dependency] private PopupSystem _popupSystem = default!;

    [SubscribeLocalEvent]
    private void OnZombification(EntityUid uid, GerasComponent component, ref EntityZombifiedEvent args)
    {
        _actionsSystem.RemoveAction(uid, component.GerasActionEntity);
    }

    [SubscribeLocalEvent]
    private void OnMapInit(EntityUid uid, GerasComponent component, MapInitEvent args)
    {
        // try to add geras action
        _actionsSystem.AddAction(uid, ref component.GerasActionEntity, component.GerasAction);
    }

    [SubscribeLocalEvent]
    private void OnMorphIntoGeras(EntityUid uid, GerasComponent component, MorphIntoGeras args)
    {
        if (HasComp<ZombieComponent>(uid))
            return; // i hate zomber.

        var ent = _polymorphSystem.PolymorphEntity(uid, component.GerasPolymorphId);

        if (!ent.HasValue)
            return;

        _popupSystem.PopupEntity(Loc.GetString("geras-popup-morph-message-others", ("entity", ent.Value)), ent.Value, Filter.PvsExcept(ent.Value), true);
        _popupSystem.PopupEntity(Loc.GetString("geras-popup-morph-message-user"), ent.Value, ent.Value);

        args.Handled = true;
    }
}
