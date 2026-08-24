// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Medical.Shared.Surgery;
using Content.Medical.Shared.Surgery.Steps;
using Content.SIS.Shared.CorticalBorer;
using Content.SIS.Shared.CorticalBorer.Components;

namespace Content.SIS.Shared.Surgery;

public sealed partial class SIS_SharedSurgerySystem
{
    [Dependency] private SharedSurgerySystem _surgerySystem = default!;
    [Dependency] private SharedCorticalBorerSystem _corticalBorer = default!;

    private void InitializeSteps()
    {
        _surgerySystem.SubSurgery<SurgeryStepRemoveCorticalBorerComponent>(OnCorticalBorerRemovalStep, OnCorticalBorerRemovalCheck);
    }

    #region Event Methods
    private void OnCorticalBorerRemovalStep(Entity<SurgeryStepRemoveCorticalBorerComponent> ent, ref SurgeryStepEvent args)
    {
        if (TryComp<CorticalBorerInfestedComponent>(args.Body, out var infested) &&
            infested.InfestationContainer.ContainedEntities.Count != 0)
            _corticalBorer.TryEjectBorer(infested.Borer);
    }

    private void OnCorticalBorerRemovalCheck(Entity<SurgeryStepRemoveCorticalBorerComponent> ent, ref SurgeryStepCompleteCheckEvent args)
    {
        if (HasComp<CorticalBorerInfestedComponent>(args.Body))
            args.Cancelled = true;
    }
    #endregion
}
