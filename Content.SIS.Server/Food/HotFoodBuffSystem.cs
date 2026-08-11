using Content.Server.Kitchen.Components;
using Content.Shared.Examine;
using Content.Shared.Nutrition.Components;
using Content.Shared.Temperature.Components;
using Content.SIS.Common.Microwave;

namespace Content.SIS.Server.Food;

public sealed class HotFoodBuffSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<HotFoodComponent, MapInitEvent>(BuffFood);
        SubscribeLocalEvent<HotFoodComponent, ComponentRemove>(DeBuffFood);
        SubscribeLocalEvent<HotFoodBuffComponent, StopMicrowaveEvent>(StopMicrowave);
        SubscribeLocalEvent<HotFoodComponent, ExaminedEvent>(OnExamine);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<HotFoodComponent>();
        while (query.MoveNext(out var uid, out var comp))
        {
            if (!TryComp<TemperatureComponent>(uid, out var tempComp))
            continue;

            if (comp.MicrowaveMaxTemperature > tempComp.CurrentTemperature)
            {
                comp.MicrowaveMaxTemperature -= 5f * frameTime;

                if (comp.MicrowaveMaxTemperature < tempComp.CurrentTemperature)
                    comp.MicrowaveMaxTemperature = tempComp.CurrentTemperature;
            }

            if (comp.MicrowaveMaxTemperature == tempComp.CurrentTemperature)
            {
                RemComp<HotFoodComponent>(uid);
            }
        }
    }

    public void BuffFood(EntityUid uid, HotFoodComponent comp, MapInitEvent args)
    {

        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;
        if (!TryComp<HotFoodBuffComponent>(comp.Owner, out var hotFoodBuffComp))
            return;
        edibleComp.TransferAmount *= hotFoodBuffComp.NutritionalValueMultiplier;
    }

    public void DeBuffFood(EntityUid uid, HotFoodComponent comp, ComponentRemove args)
    {
        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;
        if (!TryComp<HotFoodBuffComponent>(comp.Owner, out var hotFoodBuffComp))
            return;
        edibleComp.TransferAmount /= hotFoodBuffComp.NutritionalValueMultiplier;
    }

    private void StopMicrowave(EntityUid uid, HotFoodBuffComponent comp, ref StopMicrowaveEvent args)
    {
            EnsureComp<HotFoodComponent>(uid);

    }

    private void OnExamine(EntityUid uid, HotFoodComponent comp, ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("cooling-component-on-examine"));
        // добавить цвет
    }
}
