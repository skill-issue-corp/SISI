using Content.SIS.Shared.Animal;
using Robust.Client.GameObjects;

namespace Content.SIS.Client.Animal;

public sealed partial class ScaleMoth : ScaleMothSystem
{
    [Dependency] private SpriteSystem _sprite = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeNetworkEvent<ScaleMothEvent>(ScaleSpriteMoth);
    }

    public void ScaleSpriteMoth(ScaleMothEvent ev)
    {
        var uid = GetEntity(ev.Uid);
        if (!TryComp<ScaleMothComponent>(uid, out var comp))
            return;
        var sprite = Comp<SpriteComponent>(uid);
        _sprite.SetScale(uid, sprite.Scale * comp.Scaler);
    }
}
