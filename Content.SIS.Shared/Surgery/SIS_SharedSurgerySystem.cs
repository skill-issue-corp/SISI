// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Medical.Shared.Surgery.Conditions;
using Content.Medical.Shared.Surgery.Steps.Parts;
using Content.SIS.Shared.CorticalBorer.Components;

namespace Content.SIS.Shared.Surgery;

public sealed partial class SIS_SharedSurgerySystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<SurgeryCorticalBorerConditionComponent, SurgeryValidEvent>(OnCorticalBorerValid);

        InitializeSteps();
    }

    private void OnCorticalBorerValid(Entity<SurgeryCorticalBorerConditionComponent> ent, ref SurgeryValidEvent args)
    {
        if (!HasComp<CorticalBorerInfestedComponent>(args.Body) ||
            !HasComp<IncisionOpenComponent>(args.Part))
            args.Cancelled = true;
    }
}
