using Content.Shared.EntityConditions;
using Robust.Shared.Configuration;
using Robust.Shared.Prototypes;

namespace Content.SIS.Shared.EntityConditions;

/// <summary>
/// Passes when the given boolean CVar is true.
/// </summary>
public sealed partial class CVarCondition : EntityConditionBase<CVarCondition>
{
    [DataField("cvar", required: true)]
    public string CVar = string.Empty;

    public override string EntityConditionGuidebookText(IPrototypeManager prototype) => string.Empty;
}

public sealed partial class CVarConditionSystem : EntityConditionSystem<TransformComponent, CVarCondition>
{
    [Dependency] private IConfigurationManager _cfg = default!;

    protected override void Condition(Entity<TransformComponent> ent, ref EntityConditionEvent<CVarCondition> args)
    {
        args.Result = _cfg.GetCVar<bool>(args.Condition.CVar);
    }
}
