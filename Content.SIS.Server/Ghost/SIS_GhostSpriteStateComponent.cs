// SPDX-License-Identifier: AGPL-3.0-or-later

namespace Content.SIS.Server.Ghost;

[RegisterComponent]
public sealed partial class SIS_GhostSpriteStateComponent : Component
{
    /// <summary>
    /// Chance to get the custom sprite, configurable through the prototype.
    /// </summary>
    [DataField]
    public float Chance = 0.65f;
}
