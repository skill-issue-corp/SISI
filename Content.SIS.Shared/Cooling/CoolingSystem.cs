using Content.Server.Kitchen.Components;
using Content.Shared.Nutrition;
using Content.Shared.Nutrition.Components;

namespace Content.SIS.Shared.Cooling;

public sealed class CoolingSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<CoolingComponent, EdibleEvent>(CoolingMultiplier);
    }
    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<CoolingComponent, ActiveMicrowaveComponent>();

        while (query.MoveNext(out var uid, out var cool,out var comp ))
        {
            cool.TimeToCooling -= TimeSpan.FromSeconds(frameTime);

            if (cool.TimeToCooling <= TimeSpan.Zero)
            {
                RemComp<CoolingComponent>(uid);
            }

            if (comp.CookTimeRemaining > 0)
            {
                EnsureComp<CoolingComponent>(uid);
            }
        }
    }

    public void CoolingMultiplier(EntityUid entity, CoolingComponent cool, EdibleEvent eat)
    {
        if (!TryComp<EdibleComponent>(entity, out var edibleComp))
            return;
        if (!eat.Cancelled)
        {
            edibleComp.TransferAmount *= 2;
        }
    }
}
