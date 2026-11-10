using Content.Server.Chemistry.Components;
using Content.Shared.Chemistry.Components;

namespace Content.Server.Chemistry.EntitySystems;

public sealed partial class SolutionHeaterSystem
{
    /// <summary>
    /// Applies the heater's energy to the solution, clamping the resulting temperature
    /// between the heater's configured limits.
    /// </summary>
    private void ApplyHeat(Entity<SolutionComponent> soln, SolutionHeaterComponent heater, float energy)
    {
        var solution = soln.Comp.Solution;
        var heatCapacity = solution.GetHeatCapacity(ProtoMan);
        if (heatCapacity <= 0)
            return;

        var newTemperature = Math.Clamp(
            solution.Temperature + energy / heatCapacity,
            heater.MinTemperature,
            heater.MaxTemperature);

        if (MathHelper.CloseTo(newTemperature, solution.Temperature))
            return;

        _solutionContainer.SetTemperature(soln, newTemperature);
    }
}
