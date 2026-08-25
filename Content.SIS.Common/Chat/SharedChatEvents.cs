using Content.Shared.Chat;

namespace Content.SIS.Common.Chat;

public sealed class CheckTargetedSpeechEvent : EntityEventArgs
{
    public List<InGameICChatType> ChatTypeIgnore = new();
    public List<EntityUid> Targets = new();
}
