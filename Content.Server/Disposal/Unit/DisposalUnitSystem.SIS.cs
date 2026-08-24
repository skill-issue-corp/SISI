// SPDX-License-Identifier: MPL-2.0

using Content.Server.Atmos.EntitySystems;
using Content.Shared.Atmos;
using Content.Shared.Destructible;
using Content.Shared.Disposal.Components;
using Content.Shared.Disposal.Unit;
using Content.Shared.Explosion;

namespace Content.Server.Disposal.Unit;

public sealed partial class DisposalUnitSystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<DisposalUnitComponent, DestructionEventArgs>(OnDestruction);
        SubscribeLocalEvent<DisposalUnitComponent, EntityTerminatingEvent>(OnTerminating);
    }

    private void OnDestruction(EntityUid uid, DisposalUnitComponent component, DestructionEventArgs args)
    {
        EjectContents((uid, component));
    }

    private void OnTerminating(Entity<DisposalUnitComponent> ent, ref EntityTerminatingEvent args)
    {
        EjectContents(ent);
    }
}
