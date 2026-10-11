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
    private static readonly HttpClient Client = new();

    private const int DiscordMessageLimit = 2000;

    private static readonly Regex BbCodeTagRegex = new Regex(@"\[.*?\]", RegexOptions.Compiled);
    private static readonly Regex TrailingSpacesRegex = new Regex(@"[ \t]+\n", RegexOptions.Compiled);
    private static readonly Regex ExtraNewlinesRegex = new Regex(@"\n{3,}", RegexOptions.Compiled);

    private static string ConvertBBCodeToMarkdown(string text)
    {
        text = BbCodeTagRegex.Replace(text, "");
        text = text.Replace("\r\n", "\n");
        text = TrailingSpacesRegex.Replace(text, "\n");
        text = ExtraNewlinesRegex.Replace(text, "\n\n");
        return text.Trim();
    }

    private string GenerateRoundEndSummary(string gamemodeTitle, string roundEndText, RoundEndMessageEvent.RoundEndPlayerInfo[] playerInfoArray)
    {
        var roundEndTextMarkdown = ConvertBBCodeToMarkdown(roundEndText);
        var stringBuilder = new StringBuilder();

        stringBuilder.AppendLine($"Режим: {gamemodeTitle}\n");

        if (!string.IsNullOrWhiteSpace(roundEndTextMarkdown))
        {
            stringBuilder.AppendLine($"Информация: {roundEndTextMarkdown}\n");
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

        var totalPlayers = groupedPlayers.Count;

        stringBuilder.AppendLine($"Всего было игроков: {totalPlayers}\n");
        stringBuilder.AppendLine("Игроки:\n");

        foreach (var playerInfo in groupedPlayers)
        {
            stringBuilder.AppendLine($"{playerInfo.PlayerICName}({playerInfo.PlayerOOCName}) в роли: {Loc.GetString(playerInfo.Roles)}");
        }

        return stringBuilder.ToString();
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

            var duration = RoundDuration();
            var content = $"Раунд {RoundId} завершен!\n"
                          + $"Продолжительность: {Math.Truncate(duration.TotalHours)} часов {duration.Minutes} минут {duration.Seconds} секунд\n"
                          + $"{roundEndSummary}";

            var webhookUrl = $"https://discord.com/api/webhooks/{_webhookIdentifier.Value.Id}/{_webhookIdentifier.Value.Token}";

            Uri webhookUri;
            try
            {
                webhookUri = new Uri(webhookUrl);
            }
            catch (UriFormatException e)
            {
                Log.Error($"Ошибка при преобразовании webhookIdentifier в URI: {e.Message}");
                return;
            }

            HttpResponseMessage response;

            if (content.Length < DiscordMessageLimit)
            {
                var payload = JsonSerializer.Serialize(new { content });
                using var jsonContent = new StringContent(payload, Encoding.UTF8, "application/json");
                response = await Client.PostAsync(webhookUri, jsonContent);
            }
            else
            {
                var fileName = $"Round_{RoundId}_Summary.txt";
                using var form = new MultipartFormDataContent();
                var fileContent = new ByteArrayContent(Encoding.UTF8.GetBytes(content));
                fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("text/plain");
                form.Add(fileContent, "file", fileName);
                response = await Client.PostAsync(webhookUri, form);
            }

            using (response)
            {
                if (!response.IsSuccessStatusCode)
                {
                    Log.Error($"Ошибка при отправке сообщения в Discord: {response.StatusCode}");
                }
                else
                {
                    Log.Info("Информация о завершении раунда успешно отправлена.");
                }
            }
        }
        catch (Exception e)
        {
            Log.Error($"Ошибка при отправке сообщения о завершении раунда в Discord:\n{e}");
        }
    }
}
