using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.RegularExpressions;
using Content.Server.Discord;
using Content.Shared.GameTicking;
namespace Content.Server.GameTicking;

public sealed partial class GameTicker
{
    private string ConvertBBCodeToMarkdown(string text)
    {
        text = Regex.Replace(text, @"\[.*?\]", "");
        return text;
    }

    private string GenerateRoundEndSummary(string gamemodeTitle, string roundEndText, RoundEndMessageEvent.RoundEndPlayerInfo[] playerInfoArray)
    {
        var roundEndTextMarkdown = ConvertBBCodeToMarkdown(roundEndText);
        var stringBuilder = new System.Text.StringBuilder();

        stringBuilder.AppendLine($"Режим: {gamemodeTitle}\n");

        if (!string.IsNullOrWhiteSpace(roundEndTextMarkdown))
        {
            stringBuilder.AppendLine($"Информация: {roundEndTextMarkdown}\n");
        }

        var groupedPlayers = playerInfoArray
            .GroupBy(p => new { p.PlayerOOCName, p.PlayerICName })
            .Select(g => new
            {
                PlayerOOCName = g.Key.PlayerOOCName,
                PlayerICName = g.Key.PlayerICName,
                Roles = string.Join(", ", g.Select(p => p.Role).Distinct())
            })
            .ToList();

        int totalPlayers = groupedPlayers.Count;

        stringBuilder.AppendLine($"Всего было игроков: {totalPlayers}\n");
        stringBuilder.AppendLine($"Игроки:\n");

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
                    Log.Error("WebhookIdentifier is null or does not have a value.");
                    return;
                }

                var duration = RoundDuration();
                var content = $"Раунд {RoundId} завершен!\n" +
                            $"Продолжительность: {Math.Truncate(duration.TotalHours)} часов {duration.Minutes} минут {duration.Seconds} секунд\n" +
                            $"{roundEndSummary}";

                var payload = new WebhookPayload { Content = content };
                payload = new WebhookPayload { Content = content };

                // Создаем временный файл с информацией о завершении раунда
                var tempFilePath = Path.GetTempFileName();
                var fileName = $"Round_{RoundId}_Summary.txt";
                await File.WriteAllTextAsync(tempFilePath, content);

                // Construct the webhook URL using the Id and Token
                string webhookUrl = $"https://discord.com/api/webhooks/{_webhookIdentifier.Value.Id}/{_webhookIdentifier.Value.Token}";

                Uri webhookUri;
                try
                {
                    // Create the URI from the constructed webhook URL
                    webhookUri = new Uri(webhookUrl);
                }
                catch (UriFormatException e)
                {
                    Log.Error($"Ошибка при преобразовании webhookIdentifier в URI: {e.Message}");
                    return;
                }

                using (var client = new HttpClient())
                using (var form = new MultipartFormDataContent())
                {
                    var fileBytes = await File.ReadAllBytesAsync(tempFilePath);
                    var fileContent = new ByteArrayContent(fileBytes);
                    fileContent.Headers.ContentType = MediaTypeHeaderValue.Parse("text/plain");
                    form.Add(fileContent, "file", fileName);

                    var response = await client.PostAsync(webhookUri, form); // Using the constructed URI
                    if (!response.IsSuccessStatusCode)
                    {
                        Log.Error($"Ошибка при отправке файла в Discord: {response.StatusCode}");
                    }
                    else
                    {
                        Log.Info("Файл с информацией о завершении раунда успешно отправлен.");
                    }
                }

                File.Delete(tempFilePath);
            }
            catch (Exception e)
            {
                Log.Error($"Ошибка при отправке сообщения о завершении раунда в Discord:\n{e}");
            }
        }
}
