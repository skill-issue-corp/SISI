// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Alert.Components;
using Content.SIS.Shared.CorticalBorer;
using Content.SIS.Shared.CorticalBorer.Components;

namespace Content.SIS.Client.CorticalBorer;

public sealed class CorticalBorerSystem : SharedCorticalBorerSystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<CorticalBorerComponent, GetGenericAlertCounterAmountEvent>(OnGetCounterAmount);
    }

    private void OnGetCounterAmount(Entity<CorticalBorerComponent> ent, ref GetGenericAlertCounterAmountEvent args)
    {
        if (args.Handled)
            return;

        if (ent.Comp.ChemicalAlert != args.Alert)
            return;

        args.Amount = ent.Comp.ChemicalPoints;
    }
}
