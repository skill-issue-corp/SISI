using Robust.Shared.Configuration;

namespace Content.SIS.Common.CCVar;

[CVarDefs]
public sealed partial class SIS_CVars
{
    #region lowpop

    public static readonly CVarDef<bool> AutoDebug =
        CVarDef.Create("sis.auto_debug_smes", true, CVar.SERVERONLY);

    public static readonly CVarDef<int> LowPopLimit =
        CVarDef.Create("sis.low_pop_limit", 15, CVar.SERVERONLY);

    public static readonly CVarDef<int> EngiLowPopLimit =
        CVarDef.Create("sis.engi_low_pop_limit", 2, CVar.SERVERONLY);

    #endregion
}
