using Content.Shared.Examine;
using Content.Shared.Nutrition.Components;
using Content.SIS.Common.Microwave;

namespace Content.SIS.Server.Food;

public sealed class CoolingFoodSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<HotFoodBuffComponent, StopMicrowaveEvent>(StopMicrowave);
        SubscribeLocalEvent<CoolingComponent, ExaminedEvent>(OnExamine);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<CoolingComponent>();
        while (query.MoveNext(out var uid, out var cool))
        {
            cool.CurrentCoolTime -= TimeSpan.FromSeconds(frameTime);

            if (cool.CurrentCoolTime <= TimeSpan.Zero)
                RemComp<CoolingComponent>(uid);

        }
    }

    private void StopMicrowave(EntityUid uid, HotFoodBuffComponent comp, ref StopMicrowaveEvent args)
    {
        if (!HasComp<EdibleComponent>(comp.Owner))
            return;

        EnsureComp<CoolingComponent>(comp.Owner);
    }

    private void OnExamine(EntityUid uid, CoolingComponent component, ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("cooling-component-on-examine"));
    }
}
