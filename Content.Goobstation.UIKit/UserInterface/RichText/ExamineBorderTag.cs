// SPDX-License-Identifier: AGPL-3.0-or-later

using Robust.Client.UserInterface.RichText;
// SIS
using System.Globalization;

namespace Content.Goobstation.UIKit.UserInterface.RichText;

public sealed partial class ExamineBorderTag : IMarkupTagHandler
{
    public const string TagName = "examineborder";

    public string Name => TagName;
}

// SIS-ChatGreeting-Start
public sealed partial class TitleBoxTag : IMarkupTagHandler
{
    public const string TagName = "titlebox";
    public string Name => TagName;
}

public sealed partial class MessageBoxTag : IMarkupTagHandler
{
    public const string TagName = "messagebox";
    public string Name => TagName;
}

public interface IAnimatedColorTag : IMarkupTagHandler
{
    Color GetColor(MarkupNode node, int charIndex, float time, Color baseColor, Vector2 position);
}

public sealed class RainbowTag : IAnimatedColorTag
{
    private const string TagName = "rainbow";
    public string Name => TagName;

    public void PushDrawContext(MarkupNode node, MarkupDrawingContext context) { }
    public void PopDrawContext(MarkupNode node, MarkupDrawingContext context) { }

    public Color GetColor(MarkupNode node, int charIndex, float time, Color baseColor, Vector2 position)
    {
        var startHue = 0f;
        var s = 1.0f;
        var v = 1.0f;
        var a = 1.0f;

        if (node.Attributes.TryGetValue("sat", out var satAttr) && satAttr.StringValue != null)
        {
            if (float.TryParse(satAttr.StringValue, CultureInfo.InvariantCulture, out var parsedSat))
                s = Math.Clamp(parsedSat, 0f, 1f);
        }

        if (node.Attributes.TryGetValue("color", out var cAttr) && cAttr.StringValue != null)
        {
            var parsed = Color.TryFromHex(cAttr.StringValue) ?? Color.Orange;
            var hsv = Color.ToHsv(parsed);
            startHue = hsv.X;
            a = hsv.W;
        }
        else
        {
            var baseHsv = Color.ToHsv(baseColor);
            a = baseHsv.W;
        }

        var speed = 0.5f;
        if (node.Attributes.TryGetValue("speed", out var sAttr) && sAttr.StringValue != null)
        {
            if (float.TryParse(sAttr.StringValue, CultureInfo.InvariantCulture, out var parsedSpeed))
                speed = parsedSpeed;
        }

        var hue = (startHue + time * speed + charIndex * 0.03f) % 1f;
        if (hue < 0)
            hue += 1f;

        return Color.FromHsv(new Vector4(hue, s, v, a));
    }
}

public sealed class GradientTag : IAnimatedColorTag
{
    private const string TagName = "gradient";
    public string Name => TagName;

    public void PushDrawContext(MarkupNode node, MarkupDrawingContext context) { }
    public void PopDrawContext(MarkupNode node, MarkupDrawingContext context) { }

    public Color GetColor(MarkupNode node, int charIndex, float time, Color baseColor, Vector2 position)
    {
        var color1 = Color.White;
        var color2 = Color.Black;

        if (node.Attributes.TryGetValue("color1", out var c1) && c1.StringValue != null)
            color1 = Color.TryFromHex(c1.StringValue) ?? Color.Orange;

        if (node.Attributes.TryGetValue("color2", out var c2) && c2.StringValue != null)
            color2 = Color.TryFromHex(c2.StringValue) ?? Color.Orange;

        var speed = 3f;
        if (node.Attributes.TryGetValue("speed", out var sAttr) && sAttr.StringValue != null)
        {
            if (float.TryParse(sAttr.StringValue, CultureInfo.InvariantCulture, out var parsedSpeed))
                speed = parsedSpeed;
        }

        var angle = 0f;
        if (node.Attributes.TryGetValue("angle", out var aAttr) && aAttr.StringValue != null)
        {
            if (float.TryParse(aAttr.StringValue, CultureInfo.InvariantCulture, out var parsedAngle))
                angle = parsedAngle;
        }

        var spread = 150f;
        if (node.Attributes.TryGetValue("spread", out var spAttr) && spAttr.StringValue != null)
        {
            if (float.TryParse(spAttr.StringValue, CultureInfo.InvariantCulture, out var parsedSpread))
                spread = Math.Max(10f, parsedSpread);
        }

        var radians = angle * MathF.PI / 180f;

        var projectedPos = position.X * MathF.Cos(radians) + position.Y * MathF.Sin(radians);

        var frequency = MathF.PI / spread;
        var t = (MathF.Sin(time * speed + projectedPos * frequency) + 1f) / 2f;

        return Color.InterpolateBetween(color1, color2, t);
    }
}
// SIS-ChatGreeting-End
