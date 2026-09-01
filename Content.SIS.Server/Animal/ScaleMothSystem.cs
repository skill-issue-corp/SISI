using Content.Shared.Sprite;
using Content.SIS.Common.Animal;

namespace Content.SIS.Server.Animal;

public sealed partial class ScaleMothSystem : EntitySystem
{
    [Dependency] private SharedScaleVisualsSystem _scale = default!;
    public override void Initialize()

    {
        base.Initialize();

        SubscribeLocalEvent<ScaleMothComponent, EntEatIt>(MothEaten);

    }

    public void MothEaten(EntityUid uid, ScaleMothComponent component, EntEatIt eat)
    {
        component.MothEatIt = true;

        if (component.MothEatIt)
        {
            var currentScale = _scale.GetSpriteScale(uid);
            _scale.SetSpriteScale(uid, currentScale + component.ScaleMoth);
        }
        component.MothEatIt = false;
    }
}
