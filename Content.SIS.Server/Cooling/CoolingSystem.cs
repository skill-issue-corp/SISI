using Content.Server.Kitchen.Components;
using Content.Shared.Examine;
using Content.Shared.Nutrition;
using Content.Shared.Nutrition.Components;

namespace Content.SIS.Server.Cooling;

public sealed class CoolingSystem : EntitySystem
{
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<CoolingComponent, EdibleEvent>(CoolingMultiplier);
        SubscribeLocalEvent<ActivelyMicrowavedComponent, ComponentStartup>(OnMicrowavedStart);
        SubscribeLocalEvent<CoolingComponent, ExaminedEvent>(OnExamine);
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<CoolingComponent>();

        while (query.MoveNext(out var uid, out var cool))
        {
            cool.TimeToCooling -= TimeSpan.FromSeconds(frameTime);

            if (cool.TimeToCooling <= TimeSpan.Zero)
            {
                RemComp<CoolingComponent>(uid);
            }
        }
    }

    private void CoolingMultiplier(EntityUid entity, CoolingComponent cool, EdibleEvent eat)
    {
        if (!TryComp<EdibleComponent>(entity, out var edibleComp))
            return;

        if (!eat.Cancelled)
        {
            edibleComp.TransferAmount *= 2;
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
