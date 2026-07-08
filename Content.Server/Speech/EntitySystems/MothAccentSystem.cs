using System.Text.RegularExpressions;
using Content.Server.Speech.Components;
using Content.Shared.Speech;
using Robust.Shared.Random;

namespace Content.Server.Speech.EntitySystems;

public sealed class MothAccentSystem : EntitySystem
{
    [Dependency] private readonly IRobustRandom _random = default!; // RU-Localization

    private static readonly Regex RegexLowerBuzz = new Regex("z{1,3}");
    private static readonly Regex RegexUpperBuzz = new Regex("Z{1,3}");

    // RU-Localization Start
    private static readonly Regex RegexLowerZh = new Regex("ж+");
    private static readonly Regex RegexUpperZh = new Regex("Ж+");
    private static readonly Regex RegexLowerZ = new Regex("з+");
    private static readonly Regex RegexUpperZ = new Regex("З+");

    private static readonly List<string> ReplacementsZh = new List<string> { "жж", "жжж" };
    private static readonly List<string> ReplacementsZhUpper = new List<string> { "ЖЖ", "ЖЖЖ" };
    private static readonly List<string> ReplacementsZ = new List<string> { "зз", "ззз" };
    private static readonly List<string> ReplacementsZUpper = new List<string> { "ЗЗ", "ЗЗЗ" };
    // RU-Localization End

    public override void Initialize()
    {
        base.Initialize();
        SubscribeLocalEvent<MothAccentComponent, AccentGetEvent>(OnAccent);
    }

    private void OnAccent(EntityUid uid, MothAccentComponent component, AccentGetEvent args)
    {
        var message = args.Message;

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

        args.Message = message;
    }
}
