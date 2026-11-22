using System.Text.RegularExpressions;
using Content.Shared.Speech.Components;
using Robust.Shared.Random;

namespace Content.Shared.Speech.EntitySystems;

public sealed partial class FrontalLispSystem : RelayAccentSystem<FrontalLispComponent>
{
    [Dependency] private IRobustRandom _random = default!; // RU-Localization

    // @formatter:off
    private static readonly Regex RegexUpperTh = new("[T]+[Ss]+|[S]+[Cc]+(?=[IiEeYy]+)|[C]+(?=[IiEeYy]+)|[P][Ss]+|([S]+[Tt]+|[T]+)(?=[Ii]+[Oo]+[Uu]*[Nn]*)|[C]+[Hh]+(?=[Ii]*[Ee]*)|[Z]+|[S]+|[X]+(?=[Ee]+)");
    private static readonly Regex RegexLowerTh = new("[t]+[s]+|[s]+[c]+(?=[iey]+)|[c]+(?=[iey]+)|[p][s]+|([s]+[t]+|[t]+)(?=[i]+[o]+[u]*[n]*)|[c]+[h]+(?=[i]*[e]*)|[z]+|[s]+|[x]+(?=[e]+)");
    private static readonly Regex RegexUpperEcks = new("[E]+[Xx]+[Cc]*|[X]+");
    private static readonly Regex RegexLowerEcks = new("[e]+[x]+[c]*|[x]+");
    // @formatter:on

    // RU-Localization Start
    private static readonly Regex RegexLowerC = new("с");// для "с" на "ш"/"с"
    private static readonly Regex RegexUpperC = new("С");// для "С" на "Ш"/"С"
    private static readonly Regex RegexLowerCh = new("ч");// для "ч" на "ш"/"ч"
    private static readonly Regex RegexUpperCh = new("Ч");// для "Ч" на "Ш"/"Ч"
    private static readonly Regex RegexLowerTs = new("ц");// для "ц" на "ч"/"ц"
    private static readonly Regex RegexUpperTs = new("Ц");// для "Ц" на "Ч"/"Ц"
    private static readonly Regex RegexLowerT = new(@"\B[т](?![АЕЁИОУЫЭЮЯаеёиоуыэюя])");
    private static readonly Regex RegexUpperT = new(@"\B[Т](?![АЕЁИОУЫЭЮЯаеёиоуыэюя])");
    private static readonly Regex RegexLowerZ = new("з");// для "з" на "ж"/"з"
    private static readonly Regex RegexUpperZ = new("З");// для "З" на "Ж"/"З"
    // RU-Localization End

    public override string Accentuate(string message, Entity<FrontalLispComponent>? ent = null)
    {
        // handles ts, sc(i|e|y), c(i|e|y), ps, st(io(u|n)), ch(i|e), z, s
        message = RegexUpperTh.Replace(message, "Th"); // Trauma - titlecase
        message = RegexLowerTh.Replace(message, "th");
        // handles ex(c), x
        message = RegexUpperEcks.Replace(message, "Ekth"); // Trauma - titlecase
        message = RegexLowerEcks.Replace(message, "ekth");

        // RU-Localization Start
        message = RegexLowerC.Replace(message, _random.Prob(0.90f) ? "ш" : "с");
        message = RegexUpperC.Replace(message, _random.Prob(0.90f) ? "Ш" : "С");
        message = RegexLowerCh.Replace(message, _random.Prob(0.90f) ? "ш" : "ч");
        message = RegexUpperCh.Replace(message, _random.Prob(0.90f) ? "Ш" : "Ч");
        message = RegexLowerTs.Replace(message, _random.Prob(0.90f) ? "ч" : "ц");
        message = RegexUpperTs.Replace(message, _random.Prob(0.90f) ? "Ч" : "Ц");
        message = RegexLowerT.Replace(message, _random.Prob(0.90f) ? "ч" : "т");
        message = RegexUpperT.Replace(message, _random.Prob(0.90f) ? "Ч" : "Т");
        message = RegexLowerZ.Replace(message, _random.Prob(0.90f) ? "ж" : "з");
        message = RegexUpperZ.Replace(message, _random.Prob(0.90f) ? "Ж" : "З");
        // RU-Localization End

        return message;
    }
}
