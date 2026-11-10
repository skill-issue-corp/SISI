// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Trauma.Common.Audio;
using Content.Trauma.Common.CCVar;
using Robust.Shared.Audio.Components;
using Robust.Shared.Audio.Systems;
using Robust.Shared.Configuration;

namespace Content.Trauma.Client.Audio;

public sealed partial class CopyrightedAudioSystem : EntitySystem
{
// entire thing is disabled on debug because its evil and debug asserts immediately without engine update
#if !DEBUG
    [Dependency] private IConfigurationManager _cfg = default!;
    [Dependency] private SharedAudioSystem _audio = default!;
    [Dependency] private EntityQuery<AudioComponent> _query = default!;

    /// <summary>
    /// Whether streamer mode is enabled.
    /// </summary>
    [ViewVariables]
    public bool StreamerMode;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<CopyrightedAudioComponent, ComponentStartup>(OnStartup);
        SubscribeLocalEvent<CopyrightedAudioComponent, ComponentShutdown>(OnShutdown);
        //_cfg.OnValueChanged(TraumaCVars.StreamerMode, x => { StreamerMode = x; UpdateSounds(); }, true);
        Subs.CVar(_cfg, TraumaCVars.StreamerMode, OnStreamerModeChanged, true); // SIS-Fix_radio // SIS-TODO: Порт фикса радио на травму
    }

    // total dmca ANNIHILATION
    // SIS-Fix_radio Start // SIS-TODO: Порт фикса радио на травму
    private void OnStreamerModeChanged(bool streamerMode)
    {
        StreamerMode = streamerMode;
        UpdateSounds();
    }
    // SIS-Fix_radio End

    private void OnStartup(Entity<CopyrightedAudioComponent> ent, ref ComponentStartup args)
    {
        SetMuted(ent);
    }

    private void OnShutdown(Entity<CopyrightedAudioComponent> ent, ref ComponentShutdown args)
    {
        if (!TerminatingOrDeleted(ent))
            SetMuted(ent, false);
    }

    /// <summary>
    /// Updates all existing copyrighted sounds for the current streamer mode setting.
    /// </summary>
    public void UpdateSounds()
    {
        var query = AllEntityQuery<CopyrightedAudioComponent>();
        while (query.MoveNext(out var uid, out _))
        {
            SetMuted(uid);
        }
    }

    public void SetMuted(EntityUid uid, bool muted = true)
    {
        muted &= StreamerMode;
        var state = muted ? AudioState.Paused : AudioState.Playing;
        var audio = _query.Comp(uid);
        _audio.SetState(uid, state, force: true, component: audio);

        // prevent server state trolling it (jukebox mostly)
        // TODO: uncomment and remove DEBUG check if engine pr goidamerged
        //EntityManager.SetComponentNetSync(uid, audio, !muted);
        audio.NetSyncEnabled = !muted;
    }
#endif
}
