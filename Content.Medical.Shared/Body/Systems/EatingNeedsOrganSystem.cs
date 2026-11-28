// SPDX-License-Identifier: AGPL-3.0-or-later

using Content.Medical.Common.Body;
using Content.Shared.Body;
using Content.Shared.IdentityManagement;
using Content.Shared.Nutrition;
using Content.Shared.Popups;

namespace Content.Medical.Shared.Body;

public sealed partial class EatingNeedsOrganSystem : EntitySystem
{
    [Dependency] private BodySystem _body = default!;
    [Dependency] private SharedPopupSystem _popup = default!;
    [Dependency] private EntityQuery<EnabledOrganComponent> _enabledQuery = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<EatingNeedsOrganComponent, IngestionAttemptEvent>(OnIngestionAttempt);
    }

    private void OnIngestionAttempt(Entity<EatingNeedsOrganComponent> ent, ref IngestionAttemptEvent args)
    {
        if (args.Cancelled || _body.GetOrgan(ent.Owner, ent.Comp.Category) is {} head && _enabledQuery.HasComp(head))
            return;

        var user = args.User;
        var msg = user == ent.Owner
            ? "У вас нет рта!" // SIS-TODO: Анхаркод локали
            : $"У {Identity.Name(ent, EntityManager)} нет рта!"; // SIS-TODO: Анхаркод локали
        _popup.PopupEntity(msg, ent, user);
        args.Cancelled = true;
    }
}
