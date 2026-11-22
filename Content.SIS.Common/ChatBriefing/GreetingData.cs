using Robust.Shared.Audio;

namespace Content.SIS.Common.ChatBriefing;

[DataDefinition]
public sealed partial class GreetingEntry
{
    [DataField]
    public SoundSpecifier? Sound;

    [DataField]
    public string? Text;

    [DataField]
    public Color? Color;

    [DataField]
    public GreetingTheme? Theme;

    [DataField]
    public List<GreetingSection> Sections { get; private set; } = new();

    public void AddSection(string titleText, string messageText)
    {
        Sections.Add(new GreetingSection
        {
            Title = titleText,
            Message = messageText,
        });
    }
}

[DataDefinition]
public partial record struct GreetingSection
{
    [DataField(required: true)]
    public string? Title;

    [DataField(required: true)]
    public string? Message;
}

[DataDefinition]
public partial record struct GreetingTheme
{
    [DataField("titleText")]
    public Color? TitleTextColor;

    [DataField("messageText")]
    public Color? MessageTextColor;

    [DataField("titleBackground")]
    public Color? TitleBgColor;

    [DataField("messageBackground")]
    public Color? MessageBgColor;

    [DataField("titleBorder")]
    public Color? TitleBorderColor;

    [DataField("messageBorder")]
    public Color? MessageBorderColor;

    #region TitleHighlight

    [DataField("titleHighlight1")]
    public Color? TitleHighlightFirstColor;

    [DataField("titleHighlight2")]
    public Color? TitleHighlightSecondColor;

    #endregion

    #region MessageHighlight

    [DataField("messageHighlight1")]
    public Color? MessageHighlightFirstColor;

    [DataField("messageHighlight2")]
    public Color? MessageHighlightSecondColor;

    #endregion
}
