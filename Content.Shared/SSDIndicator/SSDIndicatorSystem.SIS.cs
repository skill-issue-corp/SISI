using Content.Shared.NPC;
using Content.Shared.NPC.Systems;

namespace Content.Shared.SSDIndicator;

public sealed partial class SSDIndicatorSystem
{
    [Dependency] private SharedNPCSystem _npc = default!;

    public void SIS_Initialize() { }

    [SubscribeLocalEvent]
    private void OnNpcMapInit(EntityUid uid, ActiveNPCComponent component, MapInitEvent args)
    {
        if (!TryComp<SSDIndicatorComponent>(uid, out var ssdComp))
            return;

        HandleNpc(uid, ssdComp);
    }

    private bool HandleNpc(EntityUid uid, SSDIndicatorComponent component)
    {
        if (!_npc.IsNpc(uid))
            return false;

        component.IsSSD = false;
        Dirty(uid, component);
        return true;
    }
}
