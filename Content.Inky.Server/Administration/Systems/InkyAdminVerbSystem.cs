using Content.Server.Administration.Managers;
using Content.Shared.Body;
using Content.Shared.Verbs;

namespace Content.Inky.Server.Administration.Systems;

public sealed partial class InkyAdminVerbSystem : EntitySystem
{
    [Dependency] private IAdminManager _adminManager = default!;
    [Dependency] private BodySystem _body = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<GetVerbsEvent<Verb>>(GetVerbs);
    }

    private void GetVerbs(GetVerbsEvent<Verb> ev)
    {
        AddAdminVerbs(ev);
        AddSmiteVerbs(ev);
    }
}
