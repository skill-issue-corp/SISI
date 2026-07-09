ent-MobSpaceLeviathanSegmentBase = { "" }
    .desc = { "" }

ent-SpaceLeviathan = space whale
    .desc = When the space becomes too quiet, there is no hope, there is no escape, but there is this.

ent-SpaceWhaleSegment = { ent-MobSpaceLeviathanSegmentBase }
    .desc = { ent-MobSpaceLeviathanSegmentBase.desc }

ent-SpaceLeviathanDespawn = { ent-SpaceLeviathan }
    .desc = { ent-SpaceLeviathan.desc }
    .suffix = despawns

ent-SpaceLeviathanMobCaller = mob caller (space leviathan)
    .desc = { "" }

ent-LeviathanGrapplingGun = leviathan maker hook
    .desc = A modified grappling hook used by senior salvage specialists to ride the young space whales. To use, attach directly to the head of the whale, and steer it left and right. Beware that the whale can enter hyperspace if brought too close to the station.

ent-MaterialLeviathanScale = leviathan scale plates
    .desc = Shards shed from a space leviathan, exceptionally rare. Favored by salvagers, and by megacorpos for luxury goods stitched from endangered starlife.
    .suffix = Full

ent-MaterialLeviathanScale1 = { ent-MaterialLeviathanScale }
    .desc = { ent-MaterialLeviathanScale.desc }
    .suffix = 1