// SPDX-FileCopyrightText: 2025 Ilya246
// SPDX-FileCopyrightText: 2025 ark1368
//
// SPDX-License-Identifier: MPL-2.0

using Content.Server.Atmos.EntitySystems;
using Content.Shared.Atmos;
using Content.Shared.Disposal.Components;
using Content.Shared.Disposal.Unit;

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
        var air = ent.Comp.Air;
        var indices = _xform.GetGridTilePositionOrDefault((ent, xform));

        if (_atmos.GetTileMixture(xform.GridUid, xform.MapUid, indices, true) is { Temperature: > 0f } environment)
        {
            var transferMoles = 0.1f * (0.25f * Atmospherics.OneAtmosphere * 1.01f - air.Pressure) * air.Volume / (environment.Temperature * Atmospherics.R);

            ent.Comp.Air = environment.Remove(transferMoles);
        }
    }

    private void OnDestruction(EntityUid uid, DisposalUnitComponent component, DestructionEventArgs args)
    {
        TryEjectContents(uid, component);
    }

    private void OnTerminating(Entity<DisposalUnitComponent> ent, ref EntityTerminatingEvent args)
    {
        TryEjectContents(ent, ent.Comp);
    }

    private void OnExploded(Entity<DisposalUnitComponent> ent, ref BeforeExplodeEvent args)
    {
        args.Contents.AddRange(ent.Comp.Container.ContainedEntities);
    }
}
