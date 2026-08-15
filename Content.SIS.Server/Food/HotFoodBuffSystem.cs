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

        SubscribeLocalEvent<HeatableFoodComponent, StopMicrowaveEvent>(StopMicrowave);
        SubscribeLocalEvent<HotFoodBuffComponent, MapInitEvent>(BuffFood);
        SubscribeLocalEvent<HotFoodBuffComponent, ExaminedEvent>(OnExamine);
        SubscribeLocalEvent<HotFoodBuffComponent, ComponentRemove>(DeBuffFood);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<HeatableFoodComponent, HotFoodBuffComponent>();
        while (query.MoveNext(out var uid, out var hotFoodComp, out _))
        {
            foreach (var (_, soln) in _solutionContainer.EnumerateSolutions(uid))
            {
                var solution = soln.Comp.Solution;
                solution.Temperature -= hotFoodComp.TemperatureReduction * frameTime;

                if (solution.Temperature <= hotFoodComp.DefaultFoodTemperature)
                    RemComp<HotFoodBuffComponent>(uid);
            }
        }
    }

    private void StopMicrowave(EntityUid uid, HeatableFoodComponent comp, ref StopMicrowaveEvent args)
    {
        EnsureComp<HotFoodBuffComponent>(uid);
    }

    private void BuffFood(EntityUid uid, HotFoodBuffComponent comp, MapInitEvent args)
    {
        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;

        comp.OldTransferAmount = edibleComp.TransferAmount;
        edibleComp.TransferAmount *= comp.NutritionalValueMultiplier;
    }

    private void OnExamine(EntityUid uid, HotFoodBuffComponent comp, ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("hot-food-buff-component-on-examine"));
    }

    private void DeBuffFood(EntityUid uid, HotFoodBuffComponent comp, ComponentRemove args)
    {
        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;

        edibleComp.TransferAmount = comp.OldTransferAmount;
    }
}
