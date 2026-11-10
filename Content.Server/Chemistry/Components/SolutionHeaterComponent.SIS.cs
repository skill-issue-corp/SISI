namespace Content.Server.Chemistry.Components;

public sealed partial class SolutionHeaterComponent
{
    /// <summary>
    /// Minimum temperature this heater can bring a solution to.
    /// </summary>
    [DataField, ViewVariables(VVAccess.ReadWrite)]
    public float MinTemperature = float.NegativeInfinity;

    /// <summary>
    /// Maximum temperature this heater can bring a solution to.
    /// </summary>
    [DataField, ViewVariables(VVAccess.ReadWrite)]
    public float MaxTemperature = float.PositiveInfinity;
}
