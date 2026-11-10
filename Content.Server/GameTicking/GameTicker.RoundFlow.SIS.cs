using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Text.RegularExpressions;
using Content.Shared.GameTicking;
namespace Content.Server.GameTicking;

public sealed partial class GameTicker
{
    private readonly HttpClient _webhookHttp = new();

    private const int DiscordMessageLimit = 2000;

    private static readonly Regex MarkupRegex = new(@"\\\[(?:/[^\[\]\n]*)?\\\]|\\\[([^\[\]\n]*?)\\\]|\\+[\[\]]|\[[^\[\]\n]*\]", RegexOptions.Compiled);
    private static readonly Regex BracketOnlyLineRegex = new(@"^[\\\[\] \t]*[\\\[\]][\\\[\] \t]*$\n?", RegexOptions.Compiled | RegexOptions.Multiline);
    private static readonly Regex TrailingSpacesRegex = new(@"[ \t]+\n", RegexOptions.Compiled);
    private static readonly Regex ExtraNewlinesRegex = new(@"\n{3,}", RegexOptions.Compiled);

    private static string ConvertBBCodeToMarkdown(string text)
    {
        text = text.Replace("\r\n", "\n");
        text = MarkupRegex.Replace(text, m => m.Groups[1].Success ? $"[{m.Groups[1].Value}]" : string.Empty);
        text = BracketOnlyLineRegex.Replace(text, string.Empty);
        text = TrailingSpacesRegex.Replace(text, "\n");
        text = ExtraNewlinesRegex.Replace(text, "\n\n");
        return text.Trim();
    }

    private string GenerateRoundEndSummary(string gamemodeTitle, string roundEndText, RoundEndMessageEvent.RoundEndPlayerInfo[] playerInfoArray)
    {
        var stringBuilder = new StringBuilder();

        stringBuilder.AppendLine(Loc.GetString("round-end-discord-gamemode", ("gamemode", gamemodeTitle)));

        var roundEndTextMarkdown = ConvertBBCodeToMarkdown(roundEndText);
        if (!string.IsNullOrWhiteSpace(roundEndTextMarkdown))
        {
            stringBuilder.AppendLine(Loc.GetString("round-end-discord-info", ("info", roundEndTextMarkdown)));
        }

        var groupedPlayers = playerInfoArray
            .GroupBy(p => new { p.PlayerOOCName, p.PlayerICName })
            .Select(g => new
            {
                g.Key.PlayerOOCName,
                g.Key.PlayerICName,
                Roles = string.Join(", ", g.Select(p => p.Role).Distinct()),
            })
            .ToList();

        var totalUniquePlayers = groupedPlayers
            .Select(p => p.PlayerOOCName)
            .Distinct()
            .Count();

        stringBuilder.AppendLine(Loc.GetString("round-end-discord-total-players", ("count", totalUniquePlayers)));

        var players = string.Join('\n', groupedPlayers.Select(p => Loc.GetString("round-end-discord-player",
            ("ic", p.PlayerICName ?? string.Empty),
            ("ooc", p.PlayerOOCName),
            ("role", Loc.GetString(p.Roles)))));
        stringBuilder.AppendLine(Loc.GetString("round-end-discord-players", ("players", players)));

        return stringBuilder.ToString();
    }

    private string BuildRoundEndDiscordContent(string roundEndSummary)
    {
        return BuildRoundEndDiscordContent(roundEndSummary, RoundId, RoundDuration());
    }

    private string BuildRoundEndDiscordContent(string roundEndSummary, int roundId, TimeSpan duration)
    {
        var contentRound = Loc.GetString("round-end-discord-round", ("roundId", roundId));

        var durationParts = new List<string>();
        var hours = (int) duration.TotalHours;
        if (hours > 0)
        {
            durationParts.Add(Loc.GetString("round-end-discord-duration-hours", ("hours", hours)));
        }
        if (duration.Minutes > 0)
        {
            durationParts.Add(Loc.GetString("round-end-discord-duration-minutes", ("minutes", duration.Minutes)));
        }
        durationParts.Add(Loc.GetString("round-end-discord-duration-seconds", ("seconds", duration.Seconds)));
        var contentDuration = Loc.GetString("round-end-discord-duration", ("duration", string.Join(" ", durationParts)));

        return $"{contentRound}\n{contentDuration}\n{roundEndSummary}";
    }

    private async void SendRoundEndDiscordMessageFile(string roundEndSummary)
    {
        try
        {
            if (!_webhookIdentifier.HasValue)
            {
                Log.Debug("WebhookIdentifier is null or does not have a value.");
                return;
            }

            var content = BuildRoundEndDiscordContent(roundEndSummary);

            var webhookUrl = $"https://discord.com/api/webhooks/{_webhookIdentifier.Value.Id}/{_webhookIdentifier.Value.Token}";

            Uri webhookUri;
            try
            {
                webhookUri = new Uri(webhookUrl);
            }
            catch (UriFormatException e)
            {
                Log.Error($"Failed to convert webhook identifier to URI: {e.Message}");
                return;
            }

            HttpResponseMessage response;

            if (content.Length < DiscordMessageLimit)
            {
                var payload = JsonSerializer.Serialize(new { content });
                using var jsonContent = new StringContent(payload, Encoding.UTF8, "application/json");
                response = await _webhookHttp.PostAsync(webhookUri, jsonContent);
            }
            else
            {
                var fileName = $"Round_{RoundId}_Summary.txt";
                using var form = new MultipartFormDataContent();
                var fileContent = new ByteArrayContent(Encoding.UTF8.GetBytes(content));
                fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("text/plain");
                form.Add(fileContent, "file", fileName);
                response = await _webhookHttp.PostAsync(webhookUri, form);
            }

            using (response)
            {
                if (!response.IsSuccessStatusCode)
                {
                    Log.Error($"Failed to send message to Discord: {response.StatusCode}");
                }
                else
                {
                    Log.Info("Round end information was successfully sent.");
                }
            }
        }
        catch (Exception e)
        {
            Log.Error($"Failed to send round end message to Discord:\n{e}");
        }
    }
}
