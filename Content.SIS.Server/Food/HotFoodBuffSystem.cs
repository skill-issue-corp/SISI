using Content.Server.Kitchen.Components;
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

        SubscribeLocalEvent<HotFoodBuffComponent, MapInitEvent>(BuffFood);
        SubscribeLocalEvent<HotFoodBuffComponent, ComponentRemove>(DeBuffFood);
        SubscribeLocalEvent<HotFoodComponent, StopMicrowaveEvent>(StopMicrowave);
        SubscribeLocalEvent<HotFoodBuffComponent, ExaminedEvent>(OnExamine);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<HotFoodComponent, HotFoodBuffComponent>();
        while (query.MoveNext(out var uid, out var hotFoodComp, out _))
        {
            foreach (var (_, soln) in _solutionContainer.EnumerateSolutions(uid))
            {
                var solution = soln.Comp.Solution;
                solution.Temperature -= hotFoodComp.TemperatureReduction * frameTime;

                if (solution.Temperature <= hotFoodComp.StandartFoodTemperature)
                    RemComp<HotFoodBuffComponent>(uid);
            }
        }
    }

    public void BuffFood(EntityUid uid, HotFoodBuffComponent comp, MapInitEvent args)
    {
        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;

        comp.OldTransferAmount = edibleComp.TransferAmount;
        edibleComp.TransferAmount *= comp.NutritionalValueMultiplier;
    }

    public void DeBuffFood(EntityUid uid, HotFoodBuffComponent comp, ComponentRemove args)
    {
        if (!TryComp<EdibleComponent>(comp.Owner, out var edibleComp))
            return;

        edibleComp.TransferAmount = comp.OldTransferAmount;
    }

    private void StopMicrowave(EntityUid uid, HotFoodComponent comp, ref StopMicrowaveEvent args)
    {
        EnsureComp<HotFoodBuffComponent>(uid);
    }

    private void OnExamine(EntityUid uid, HotFoodBuffComponent comp, ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("HotFoodBuff-component-on-examine"));
    }
}
