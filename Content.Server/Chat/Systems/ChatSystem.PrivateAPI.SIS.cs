
using System.Globalization;
using Content.Shared.CCVar;
using Content.Shared.Chat;
using Content.Shared.Database;
using Content.Shared.Ghost;
using Content.Trauma.Common.Language;
using Robust.Shared.Utility;

namespace Content.Server.Chat.Systems;

public sealed partial class ChatSystem
{
        private void SendEntityDirect(
        EntityUid source,
        string originalMessage,
        ChatTransmitRange range,
        LanguagePrototype language,
        string? nameOverride,
        List<EntityUid> recipients,
        bool hideLog = false,
        bool ignoreActionBlocker = false)
    {
        var message = TransformSpeech(source, FormattedMessage.RemoveMarkupOrThrow(originalMessage), language);
        if (message.Length == 0)
            return;

        string name;
        if (nameOverride != null)
        {
            name = nameOverride;
        }
        else
        {
            var nameEv = new TransformSpeakerNameEvent(source, Name(source));
            RaiseLocalEvent(source, nameEv);
            name = nameEv.VoiceName;
        }
        name = FormattedMessage.EscapeText(name);

        var languageObfuscatedMessage = SanitizeInGameICMessage(
            source,
            _language.ObfuscateSpeech(message, language, source),
            out var emoteStr,
            true,
            _configurationManager.GetCVar(CCVars.ChatPunctuation),
            (!CultureInfo.CurrentCulture.IsNeutralCulture && CultureInfo.CurrentCulture.Parent.Name == "en")
            || (CultureInfo.CurrentCulture.IsNeutralCulture && CultureInfo.CurrentCulture.Name == "en")
        ); // Einstein Engines - Language

        foreach (var (session, data) in GetRecipients(source, WhisperMuffledRange))
        {
            if (session.AttachedEntity is not { Valid: true } listener)
                continue;

            // Einstein Engines - Language begin
            var canUnderstandLanguage = _language.CanUnderstand(listener, language.ID);
            // How the entity perceives the message depends on whether it can understand its language
            var perceivedMessage = canUnderstandLanguage ? message : languageObfuscatedMessage;

            if (MessageRangeCheck(session, data, range) != MessageRangeCheckResult.Full ||
                !recipients.Contains(listener) &&
                !HasComp<GhostComponent>(listener))
                continue;

            var wrappedMessage = WrapWhisperMessage(source, "chat-manager-entity-whisper-wrap-message", name, perceivedMessage, language);
            _chatManager.ChatMessageToOne(ChatChannel.CollectiveMind, message, wrappedMessage, source, false, session.Channel);
        }

        if (hideLog)
            return;

        if (originalMessage == message)
        {
            if (name != Name(source))
            {
                _adminLogger.Add(
                    LogType.Chat,
                    LogImpact.Low,
                    $"Direct messaged from {ToPrettyString(source):user} as {name}: {originalMessage}."
                );
            }
            else
            {
                _adminLogger.Add(
                    LogType.Chat,
                    LogImpact.Low,
                    $"Direct messaged from {ToPrettyString(source):user}: {originalMessage}."
                );
            }
        }
        else
        {
            if (name != Name(source))
            {
                _adminLogger.Add(
                    LogType.Chat,
                    LogImpact.Low,
                    $"Direct messaged from {ToPrettyString(source):user} as {name}, original: {originalMessage}, transformed: {message}."
                );
            }
            else
            {
                _adminLogger.Add(
                    LogType.Chat,
                    LogImpact.Low,
                    $"Direct messaged from {ToPrettyString(source):user}, original: {originalMessage}, transformed: {message}."
                );
            }
        }
    }
}
