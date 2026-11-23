using Content.Server.Administration.Managers;
using Content.Server.Administration.Systems;
using Content.Shared.Verbs;

namespace Content.Inky.Server.Administration.Systems;

public sealed partial class InkyAdminVerbSystem : EntitySystem
{
    [Dependency] private IAdminManager _adminManager = default!; // SIS-Adminverb_fix // SIS-TODO: Порт на Инки

    [SubscribeLocalEvent]
    private void GetVerbs(GetVerbsEvent<Verb> ev)
    {
        AddAdminVerbs(ev);
    }
}
