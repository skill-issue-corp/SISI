using System.Numerics;
using Content.Shared.Nutrition;
using Robust.Shared.GameStates;

namespace Content.SIS.Shared.Animal;

[RegisterComponent, NetworkedComponent]

public sealed partial class ScaleMothComponent : Component
{
    [DataField]
    public Vector2 Scaler = new(0.3f, 0.3f);
}
