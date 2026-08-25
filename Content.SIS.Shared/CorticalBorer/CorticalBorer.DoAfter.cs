// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Shared.DoAfter;
using Robust.Shared.Serialization;

namespace Content.SIS.Shared.CorticalBorer;

[Serializable, NetSerializable]
public sealed partial class CorticalInfestDoAfterEvent : SimpleDoAfterEvent;
