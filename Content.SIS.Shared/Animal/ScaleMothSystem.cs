using Content.Shared.Nutrition;

namespace Content.SIS.Shared.Animal;

public abstract class ScaleMothSystem : EntitySystem
{

    public override void Initialize()

    {
        base.Initialize();

        SubscribeLocalEvent<ScaleMothComponent, EdibleEvent>(MothEaten);

    }

    public void MothEaten(Entity<ScaleMothComponent> entity, ref EdibleEvent args)
    {
        if (!args.Cancelled)
        {
            RaiseNetworkEvent(new ScaleMothEvent(GetNetEntity(entity.Owner), true));
        }
    }
}
