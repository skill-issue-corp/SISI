using Content.Shared.Chemistry.Components;
using Content.Shared.Chemistry.EntitySystems;
using Content.Shared.Examine;
using Content.Shared.Nutrition.Components;
using Content.SIS.Common.Microwave;

namespace Content.SIS.Server.Food;

public sealed partial class HotFoodBuffSystem : EntitySystem
{

    [Dependency] private SharedSolutionContainerSystem _solutionContainer = default!;

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
            foreach (var (_, soln) in _solutionContainer.EnumerateSolutions(uid))
            {
                var solution = soln.Comp.Solution;


                if (solution.Temperature > comp.StandartFoodTemperature)
                {
                    solution.Temperature -= 2f * frameTime;

                }

                if (solution.Temperature <= comp.StandartFoodTemperature)
                {
                    RemComp<HotFoodBuffComponent>(uid);
                }
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
