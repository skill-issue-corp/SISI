// SPDX-License-Identifier: AGPL-3.0-or-later

namespace Content.SIS.Server.Ghost;

/// <summary>
/// Ghost with this component has a chance to spawn with a custom sprite instead of the default one.
/// </summary>
[RegisterComponent]
public sealed partial class SISGhostSpriteStateComponent : Component
{
    /// <summary>
    /// Chance to get the custom sprite, configurable through the prototype.
    /// </summary>
    [DataField]
    public float Chance = 0.65f;
}
