using JetBrains.Annotations;
using Robust.Shared.Audio;
using Robust.Shared.Player;
using Content.SIS.Common.ChatBriefing;

namespace Content.Shared.Antag;

public abstract partial class AntagSelectionSystem
{
    /// <summary>
    /// Helper method to send a formatted GreetingEntry to an entity
    /// </summary>
    [PublicAPI]
    public void SendBriefing(EntityUid entity, GreetingEntry? entry)
    {
        if (!Mind.TryGetMind(entity, out _, out var mindComponent))
            return;

        if (!PlayerManager.TryGetSessionById(mindComponent.UserId, out var session))
            return;

        SendBriefing(session, entry);
    }

    /// <summary>
    /// Helper method to send a formatted ChatBriefingEntry to a session
    /// </summary>
    /// <param name="session">The player chosen to be an antag</param>
    /// <param name="entry">The ChatBriefingEntry containing sections</param>
    [PublicAPI]
    public void SendBriefing(ICommonSession? session, GreetingEntry? entry)
    {
        if (session == null || entry == null)
            return;

        var markupText = _chatBriefing.BuildSections(entry);
        if (string.IsNullOrEmpty(markupText) && entry.Text is { } key)
            markupText = Loc.GetString(key);
        if (string.IsNullOrEmpty(markupText))
            return;

        SendBriefing(session, markupText, entry.Color, entry.Sound);
    }
}
