using Content.Shared.Cuffs;
using Robust.Shared.Network;

namespace Content.Shared.Body;

public sealed partial class HandOrganSystem
{
    [Dependency] private SharedCuffableSystem _cuffable = default!;
    [Dependency] private INetManager _net = default!; // SIS-Decapoid_fix // SIS-TODO: Порт фикса на травму

    private void GiveStartingItem(Entity<HandOrganComponent> ent, EntityUid target)
    {
        // SIS-Decapoid_fix Start // SIS-TODO: Порт фикса на травму
        if (_net.IsClient)
            return;
        // SIS-Decapoid_fix End

        if (ent.Comp.StartingItem is not { } proto)
            return;

        var item = PredictedSpawnNextToOrDrop(proto, target);
        _hands.TryPickup(target, item, ent.Comp.HandID, animate: false);
    }
}
