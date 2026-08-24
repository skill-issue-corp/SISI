namespace Content.SIS.Common.Radio;

/// <summary>
/// Transfers radio messages heard by an entity to another source, allowing another entity to hear what another entity hears over comms.
/// </summary>
[ByRefEvent]
public record struct RadioMessageHeardEvent(
    EntityUid Headset,
    object Msg,
    object Channel
);
