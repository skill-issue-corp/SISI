// SPDX-FileCopyrightText: 2025 Ilya246
// SPDX-FileCopyrightText: 2025 ark1368
//
// SPDX-License-Identifier: MPL-2.0

using Content.Server.Atmos.EntitySystems;
using Content.Shared.Atmos;
using Content.Shared.Destructible;
using Content.Shared.Disposal.Components;
using Content.Shared.Disposal.Unit;
using Content.Shared.Explosion;

namespace Content.Server.Disposal.Unit;

/// <inheritdoc/>
public sealed partial class DisposalUnitSystem : SharedDisposalUnitSystem
{
    [Dependency] private SharedTransformSystem _xform = default!;
    [Dependency] private AtmosphereSystem _atmos = default!;

    /// <inheritdoc/>
    protected override void IntakeAir(Entity<DisposalUnitComponent> ent, TransformComponent xform)
    {
        base.Initialize();

        SubscribeLocalEvent<DisposalUnitComponent, DestructionEventArgs>(OnDestruction);
        SubscribeLocalEvent<DisposalUnitComponent, EntityTerminatingEvent>(OnTerminating);
        SubscribeLocalEvent<DisposalUnitComponent, BeforeExplodeEvent>(OnExploded);
    }

    private void OnDestruction(EntityUid uid, DisposalUnitComponent component, DestructionEventArgs args)
    {
        // TryEjectContents(uid, component); // TODO-SIS: Бля
    }

    private void OnTerminating(Entity<DisposalUnitComponent> ent, ref EntityTerminatingEvent args)
    {
        // TryEjectContents(ent, ent.Comp); // TODO-SIS: Бля
    }

    private void OnExploded(Entity<DisposalUnitComponent> ent, ref BeforeExplodeEvent args)
    {
        // args.Contents.AddRange(ent.Comp.Container.ContainedEntities); // TODO-SIS: Бля
    }
}
