using Robust.Shared.Audio;

namespace Content.SIS.Common.ChatBriefing;

public sealed class GreetingSystem : EntitySystem
{
    private const string TitleBgColorFallback = "#a42f2f";
    private const string TitleBorderColorFallback = "#ff0000";
    private const string MessageBgColorFallback = "#221919";
    private const string MessageBorderColorFallback = "#3b1111";
    private static readonly Color ColorFallback = Color.Orange;

    /// <summary>
    /// Builds a formatted markup string from a ChatBriefingEntry using TitleBoxes and MessageBoxes.
    /// </summary>
    public string? BuildSections(GreetingEntry? entry)
    {
        if (entry == null || entry.Sections.Count == 0)
            return null;

        var theme = entry.Theme;

        var sections = new List<GreetingSection>(entry.Sections);
        sections.Sort((a, b) => a.Priority.CompareTo(b.Priority));

        var finalMessage = new FormattedMessage();
        finalMessage.PushNewline();

        for (var i = 0; i < sections.Count; i++)
        {
            var section = sections[i];

            if (section.Title != null && !string.IsNullOrEmpty(section.Title.Text))
            {
                var bgColor = section.Title.BackgroundColor?.ToHex() ?? theme?.TitleBgColor?.ToHex() ?? TitleBgColorFallback;
                var borderColor = section.Title.BorderColor?.ToHex() ?? theme?.TitleBorderColor?.ToHex() ?? TitleBorderColorFallback;

                var color = section.Title.TextColor ?? section.TextColor ?? theme?.TitleTextColor ?? theme?.TextColor ?? ColorFallback;
                var hl1 = section.Title.HighlightFirstColor ?? section.TitleHighlightFirstColor ?? section.HighlightFirstColor ??
                    theme?.TitleHighlightFirstColor ?? theme?.HighlightFirstColor ?? theme?.HighlightColor ?? color;
                var hl2 = section.Title.HighlightSecondColor ?? section.TitleHighlightSecondColor ?? section.HighlightSecondColor
                    ?? theme?.TitleHighlightSecondColor ?? theme?.HighlightSecondColor ?? hl1;

                var text = Loc.GetString(section.Title.Text, ("hl1", hl1.ToHex()), ("hl2", hl2.ToHex()));
                var markup = $"[titlebox bg=\"{bgColor}\" border=\"{borderColor}\"][color={color.ToHex()}]{text}[/color][/titlebox]";
                finalMessage.AddMarkupPermissive(markup);

                finalMessage.PushNewline();
                finalMessage.PushNewline();
            }

            if (section.Message != null && !string.IsNullOrEmpty(section.Message.Text))
            {
                var bgColor = section.Message.BackgroundColor?.ToHex() ?? theme?.MessageBgColor?.ToHex() ?? MessageBgColorFallback;
                var borderColor = section.Message.BorderColor?.ToHex() ?? theme?.MessageBorderColor?.ToHex() ?? MessageBorderColorFallback;

                var color = section.Message.TextColor ?? section.TextColor ?? theme?.MessageTextColor ?? theme?.TextColor ?? ColorFallback;
                var hl1 = section.Message.HighlightFirstColor ?? section.MessageHighlightFirstColor ?? section.HighlightFirstColor
                    ?? theme?.MessageHighlightFirstColor ?? theme?.HighlightFirstColor ?? theme?.HighlightColor ?? color;
                var hl2 = section.Message.HighlightSecondColor ?? section.MessageHighlightSecondColor ?? section.HighlightSecondColor
                    ?? theme?.MessageHighlightSecondColor ?? theme?.HighlightSecondColor ?? hl1;

                var text = Loc.GetString(section.Message.Text, ("hl1", hl1.ToHex()), ("hl2", hl2.ToHex()));

                var markup = $"[messagebox bg=\"{bgColor}\" border=\"{borderColor}\"][color={color.ToHex()}]{text}[/color][/messagebox]";
                finalMessage.AddMarkupPermissive(markup);
            }

            if (i < sections.Count - 1)
            {
                finalMessage.PushNewline();
                finalMessage.PushNewline();
                finalMessage.PushNewline();
            }
        }
        finalMessage.PushNewline();
        // finalMessage.Pop();

        return finalMessage.ToMarkup();
    }
}

[DataDefinition]
public partial struct GreetingSection
{
    [DataField(required: true)]
    public GreetingBox? Title;

    [DataField(required: true)]
    public GreetingBox? Message;

    [DataField]
    public int Priority = 0;

    [DataField]
    public Color? TextColor;

    // Highlight
    [DataField("highlight")]
    public Color? HighlightColor;

    [DataField("highlight1")]
    public Color? HighlightFirstColor;

    [DataField("highlight2")]
    public Color? HighlightSecondColor;
    // Highlight

    // TitleHighlight
    [DataField("titleHighlight1")]
    public Color? TitleHighlightFirstColor;

    [DataField("titleHighlight2")]
    public Color? TitleHighlightSecondColor;
    // TitleHighlight

    // MessageHighlight
    [DataField("messageHighlight1")]
    public Color? MessageHighlightFirstColor;

    [DataField("messageHighlight2")]
    public Color? MessageHighlightSecondColor;
    // MessageHighlight
}

[DataDefinition]
public sealed partial class GreetingBox
{
    [DataField(required: true)]
    public string Text;

    [DataField]
    public Color? BackgroundColor;

    [DataField]
    public Color? BorderColor;

    [DataField]
    public Color? TextColor;

    // Highlight
    [DataField("highlight")]
    public Color? HighlightColor;

    [DataField("highlight1")]
    public Color? HighlightFirstColor;

    [DataField("highlight2")]
    public Color? HighlightSecondColor;
    // Highlight
}

[DataDefinition]
public sealed partial class GreetingEntry
{
    [DataField]
    public List<GreetingSection> Sections { get; private set; } = new();

    [DataField]
    public GreetingTheme? Theme;

    [DataField]
    public SoundSpecifier? Sound;

    public void AddSection(string titleText, string messageText, int priority)
    {
        Sections.Add(new GreetingSection
        {
            Title = new GreetingBox { Text = titleText },
            Message = new GreetingBox { Text = messageText },
            Priority = priority,
        });
    }

    public void AddSection(GreetingBox title, GreetingBox message, int priority)
    {
        Sections.Add(new GreetingSection
        {
            Title = title,
            Message = message,
            Priority = priority,
        });
    }
}

[DataDefinition]
public partial record struct GreetingTheme
{
    [DataField("titleBackground")]
    public Color? TitleBgColor;

    [DataField("titleBorder")]
    public Color? TitleBorderColor;

    [DataField("messageBackground")]
    public Color? MessageBgColor;

    [DataField("messageBorder")]
    public Color? MessageBorderColor;

    [DataField("text")]
    public Color? TextColor;

    [DataField("titleText")]
    public Color? TitleTextColor;

    [DataField("messageText")]
    public Color? MessageTextColor;

    // Highlight
    [DataField("highlight")]
    public Color? HighlightColor;

    [DataField("highlight1")]
    public Color? HighlightFirstColor;

    [DataField("highlight2")]
    public Color? HighlightSecondColor;
    // Highlight

    // TitleHighlight
    [DataField("titleHighlight1")]
    public Color? TitleHighlightFirstColor;

    [DataField("titleHighlight2")]
    public Color? TitleHighlightSecondColor;
    // TitleHighlight

    // MessageHighlight
    [DataField("messageHighlight1")]
    public Color? MessageHighlightFirstColor;

    [DataField("messageHighlight2")]
    public Color? MessageHighlightSecondColor;
    // MessageHighlight
}
