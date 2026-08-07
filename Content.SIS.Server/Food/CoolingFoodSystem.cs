using Content.Server.Kitchen.Components;
using Content.Shared.Examine;
using Content.Shared.Nutrition.Components;

namespace Content.SIS.Server.Food;

public sealed class CoolingFoodSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<ActivelyMicrowavedComponent, ComponentStartup>(OnMicrowavedStart);
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

    private void OnMicrowavedStart(Entity<ActivelyMicrowavedComponent> ent, ref ComponentStartup args)
    {
        if (!HasComp<EdibleComponent>(ent.Owner))
            return;

        EnsureComp<CoolingComponent>(ent.Owner);
    }

    private void OnExamine(EntityUid uid, CoolingComponent component, ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("cooling-component-on-examine"));
    }
}
