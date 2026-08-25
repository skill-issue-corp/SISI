// SPDX-License-Identifier: AGPL-3.0-or-later

namespace Content.Trauma.Common.CollectiveMind;

public sealed partial class CollectiveMindUpdateSystem
{
    public bool HasCollectiveMind(Entity<CollectiveMindComponent?> ent, ProtoId<CollectiveMindPrototype> channel) {
        if (!Resolve(ent, ref ent.Comp, false))
            return false;

        return ent.Comp.Channels.Contains(channel);
    }

    public bool AddCollectiveMind(Entity<CollectiveMindComponent?> ent, ProtoId<CollectiveMindPrototype> channel, bool setDefault = false) {
        if (!Resolve(ent, ref ent.Comp, false))
            EnsureComp<CollectiveMindComponent>(ent, out ent.Comp);

        bool res = ent.Comp.Channels.Add(channel);
        if (setDefault)
            ent.Comp.DefaultChannel = channel;

        Dirty(ent);
        return res;
    }

    public bool RemoveCollectiveMind(Entity<CollectiveMindComponent?> ent, ProtoId<CollectiveMindPrototype> channel) {
        if (!Resolve(ent, ref ent.Comp))
            return false;

        bool res = ent.Comp.Channels.Remove(channel);
        if (ent.Comp.DefaultChannel == channel)
            ent.Comp.DefaultChannel = null;

        Dirty(ent);
        return res;
    }
}
