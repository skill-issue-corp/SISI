using Content.Shared.Nutrition;

namespace Content.SIS.Shared.Animal;

public abstract class ScaleMothSystem : EntitySystem
{

    public override void Initialize()

    {
        base.Initialize();

        SubscribeLocalEvent<ScaleMothComponent, EdibleEvent>(MothEaten);

    }

    public void MothEaten(EntityUid uid, ScaleMothComponent comp, ref EdibleEvent args)
    {
        if (!args.Cancelled)
        {
            RaiseNetworkEvent(new ScaleMothEvent(GetNetEntity (uid), true));
        }
    }
}
