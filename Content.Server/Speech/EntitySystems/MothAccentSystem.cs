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
    private static readonly Regex _regexLowerZh = new Regex("ж+");
    private static readonly Regex _regexUpperZh = new Regex("Ж+");
    private static readonly Regex _regexLowerZ = new Regex("з+");
    private static readonly Regex _regexUpperZ = new Regex("З+");

    private static readonly List<string> _replacementsZh = new List<string> { "жж", "жжж" };
    private static readonly List<string> _replacementsZhUpper = new List<string> { "ЖЖ", "ЖЖЖ" };
    private static readonly List<string> _replacementsZ = new List<string> { "зз", "ззз" };
    private static readonly List<string> _replacementsZUpper = new List<string> { "ЗЗ", "ЗЗЗ" };
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
        message = _regexLowerZh.Replace(message, _random.Pick(_replacementsZh));
        message = _regexUpperZh.Replace(message, _random.Pick(_replacementsZhUpper));
        message = _regexLowerZ.Replace(message, _random.Pick(_replacementsZ));
        message = _regexUpperZ.Replace(message, _random.Pick(_replacementsZUpper));
        // RU-Localization End

        args.Message = message;
    }
}
