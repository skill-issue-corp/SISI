using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using Content.Shared.GameTicking;
namespace Content.Server.GameTicking;

public sealed partial class GameTicker
{
    private readonly HttpClient _webhookHttp = new();

    private const int DiscordMessageLimit = 2000;
    private const string BlockWrapper = "```";

    private string GenerateRoundEndSummary(string gamemodeTitle, RoundEndMessageEvent.RoundEndPlayerInfo[] playerInfoArray)
    {
        var stringBuilder = new StringBuilder();

        stringBuilder.AppendLine(Loc.GetString("round-end-discord-gamemode", ("gamemode", gamemodeTitle)));

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
        stringBuilder.AppendLine(Loc.GetString("round-end-discord-players"));

        stringBuilder.Append(BlockWrapper);
        foreach (var playerInfo in groupedPlayers)
        {
            stringBuilder.AppendLine($"- {Loc.GetString("round-end-discord-player",
                ("ic", playerInfo.PlayerICName ?? string.Empty),
                ("ooc", playerInfo.PlayerOOCName),
                ("role", Loc.GetString(playerInfo.Roles)))}");
        }
        stringBuilder.Append(BlockWrapper);

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
