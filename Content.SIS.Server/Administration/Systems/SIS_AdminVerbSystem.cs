using Content.Server.Administration.Managers;
using Content.Shared.Verbs;

namespace Content.SIS.Server.Administration.Systems;

public sealed partial class SIS_AdminVerbSystem : EntitySystem
{
    [Dependency] private IAdminManager _adminManager = default!;

    [SubscribeLocalEvent]
    private void GetVerbs(GetVerbsEvent<Verb> ev)
    {
        AddAdminVerbs(ev);
    }
}
