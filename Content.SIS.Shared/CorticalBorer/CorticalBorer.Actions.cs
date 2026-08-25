// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.Actions;
using Robust.Shared.Serialization;

namespace Content.SIS.Shared.CorticalBorer;

public sealed partial class CorticalInfestEvent : EntityTargetActionEvent;
public sealed partial class CorticalEjectEvent : InstantActionEvent;
public sealed partial class CorticalChemMenuActionEvent : InstantActionEvent;
public sealed partial class CorticalCheckBloodEvent : InstantActionEvent;
public sealed partial class CorticalTakeControlEvent : InstantActionEvent;
public sealed partial class CorticalEndControlEvent : InstantActionEvent;
public sealed partial class CorticalLayEggEvent : InstantActionEvent;

public sealed class InfestHostAttempt : CancellableEntityEventArgs
{
    /// <summary>
    ///     The equipment that is blocking the entrance
    /// </summary>
    public EntityUid? Blocker = null;
}

[Serializable, NetSerializable]
public enum CorticalBorerDispenserUiKey
{
    Key
}

[Serializable, NetSerializable]
public sealed class CorticalBorerDispenserSetInjectAmountMessage : BoundUserInterfaceMessage
{
    public readonly int CorticalBorerDispenserDispenseAmount;

    public CorticalBorerDispenserSetInjectAmountMessage(int amount)
    {
        CorticalBorerDispenserDispenseAmount = amount;
    }
}

[Serializable, NetSerializable]
public sealed class CorticalBorerDispenserInjectMessage : BoundUserInterfaceMessage
{
    public readonly string ChemProtoId;

    public CorticalBorerDispenserInjectMessage(string proto)
    {
        ChemProtoId = proto;
    }
}

[Serializable, NetSerializable]
public sealed class CorticalBorerDispenserBoundUserInterfaceState : BoundUserInterfaceState
{
    public readonly List<CorticalBorerDispenserItem> DisList;

    public readonly int SelectedDispenseAmount;
    public CorticalBorerDispenserBoundUserInterfaceState(List<CorticalBorerDispenserItem> disList, int dispenseAmount)
    {
        DisList = disList;
        SelectedDispenseAmount = dispenseAmount;
    }
}

[Serializable, NetSerializable]
public sealed class CorticalBorerDispenserItem(string reagentName, string reagentId, int cost, int amount, int chems, Color reagentColor)
{
    public string ReagentName = reagentName;
    public string ReagentId = reagentId;
    public int Cost = cost;
    public int Amount = amount;
    public int Chems = chems;
    public Color ReagentColor = reagentColor;
}
