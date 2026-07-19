using Content.SIS.Shared.Respawn;
using Content.Shared.Mind;
using JetBrains.Annotations;
using Robust.Client.Player;
using Robust.Client.UserInterface;

namespace Content.SIS.Client.Respawn.UI;

[UsedImplicitly]
public sealed class RespawnBoundUserInterface : BoundUserInterface
{
    [Dependency] private readonly IEntityManager _entityManager = default!;
    [Dependency] private readonly IPlayerManager _playerManager = default!;

    private readonly SharedMindSystem _mindSystem = default!;

    private RespawnWindow? _window;

    public RespawnBoundUserInterface(EntityUid owner, Enum uiKey) : base(owner, uiKey)
    {
        IoCManager.InjectDependencies(this);
        _mindSystem = _entityManager.System<SharedMindSystem>();
    }

    protected override void Open()
    {
        base.Open();

        _window = this.CreateWindow<RespawnWindow>();
        _window.OpenCentered();

        var session = _playerManager.LocalSession;
        if (_mindSystem.TryGetMind(session, out var mindUid, out _)
            && _entityManager.TryGetComponent<RespawnStatusComponent>(mindUid, out var comp))
        {
            _window.RespawnStatus = comp;
        }

        _window.OnRequestPressed += () =>
        {
            _entityManager.RaisePredictiveEvent(new RespawnRequestEvent());
            Close();
        };

        _window.OnClose += Close;
    }

    protected override void Dispose(bool disposing)
    {
        base.Dispose(disposing);
        if (!disposing) return;
        _window?.Close();
        _window = null;
    }
}
