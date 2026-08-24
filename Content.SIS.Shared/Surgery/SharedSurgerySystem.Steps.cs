// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Medical.Shared.Surgery;
using Content.Medical.Shared.Surgery.Conditions;
using Content.Medical.Shared.Surgery.Steps;
using Content.Medical.Shared.Surgery.Steps.Parts;
using Content.SIS.Shared._Mono.CorticalBorer;

namespace Content.SIS.Shared.Surgery;

public abstract partial class SharedSurgerySystem : EntitySystem
{
    [Dependency] private SharedCorticalBorerSystem _corticalBorer = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<SurgeryCorticalBorerConditionComponent, SurgeryValidEvent>(OnCorticalBorerValid);

        SubSurgery<SurgeryStepRemoveCorticalBorerComponent>(OnCorticalBorerRemovalStep, OnCorticalBorerRemovalCheck);
    }

    private void SubSurgery<TComp>(EntityEventRefHandler<TComp, SurgeryStepEvent> onStep,
        EntityEventRefHandler<TComp, SurgeryStepCompleteCheckEvent> onComplete) where TComp : IComponent
    {
        SubscribeLocalEvent(onStep);
        SubscribeLocalEvent(onComplete);
    }

    private void OnCorticalBorerValid(Entity<SurgeryCorticalBorerConditionComponent> ent, ref SurgeryValidEvent args)
    {
        if (!HasComp<CorticalBorerInfestedComponent>(args.Body) ||
            !HasComp<IncisionOpenComponent>(args.Part))
            args.Cancelled = true;
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
