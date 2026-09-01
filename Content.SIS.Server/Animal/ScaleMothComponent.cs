using System.Numerics;

namespace Content.SIS.Server.Animal;

[RegisterComponent]
public sealed partial class ScaleMothComponent : Component
{
    [DataField]
    public Vector2 ScaleMoth = new(0.35f, 0.35f);

    public bool MothEatIt = false;
}
