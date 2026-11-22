using System.Text.RegularExpressions;
using Content.Shared.Speech.Components;
using Robust.Shared.Random;

namespace Content.Shared.Speech.EntitySystems;

public sealed partial class MothAccentSystem : RelayAccentSystem<MothAccentComponent>
{
    [Dependency] private IRobustRandom _random = default!; // RU-Localization

    private static readonly Regex RegexLowerBuzz = new("z{1,3}");
    private static readonly Regex RegexUpperBuzz = new("Z{1,3}");

    // RU-Localization Start
    private static readonly Regex RegexLowerZh = new("ж+");
    private static readonly Regex RegexUpperZh = new("Ж+");
    private static readonly Regex RegexLowerZ = new("з+");
    private static readonly Regex RegexUpperZ = new("З+");

    private static readonly List<string> ReplacementsZh = new() { "жж", "жжж" };
    private static readonly List<string> ReplacementsZhUpper = new() { "ЖЖ", "ЖЖЖ" };
    private static readonly List<string> ReplacementsZ = new() { "зз", "ззз" };
    private static readonly List<string> ReplacementsZUpper = new() { "ЗЗ", "ЗЗЗ" };
    // RU-Localization End

    public override string Accentuate(string message, Entity<MothAccentComponent>? ent = null)
    {
        // buzzz
        message = RegexLowerBuzz.Replace(message, "zzz");
        // buZZZ
        message = RegexUpperBuzz.Replace(message, "ZZZ");

        // RU-Localization Start
        message = RegexLowerZh.Replace(message, _random.Pick(ReplacementsZh));
        message = RegexUpperZh.Replace(message, _random.Pick(ReplacementsZhUpper));
        message = RegexLowerZ.Replace(message, _random.Pick(ReplacementsZ));
        message = RegexUpperZ.Replace(message, _random.Pick(ReplacementsZUpper));
        // RU-Localization End

        return message;
    }
}
