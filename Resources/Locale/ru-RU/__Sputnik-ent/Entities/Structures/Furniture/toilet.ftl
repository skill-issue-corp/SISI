ent-BaseToilet = toilet
    .desc = The HT-451, a torque rotation-based, waste disposal unit for small matter. This one seems remarkably clean.

ent-ToiletEmpty = toilet
    .desc = The HT-451, a torque rotation-based, waste disposal unit for small matter. This one seems remarkably clean.
    .suffix = Empty

ent-ToiletDirtyWater = { ent-ToiletEmpty }
    .desc = { ent-ToiletEmpty.desc }
    .suffix = Dirty Water

ent-ToiletFilled = { ent-ToiletEmpty }
    .desc = { ent-ToiletEmpty.desc }
    .suffix = Empty, Random Cistern Loot

ent-ToiletDirtyWaterFilled = { ent-ToiletDirtyWater }
    .desc = { ent-ToiletDirtyWater.desc }
    .suffix = Dirty Water, Random Cistern Loot

ent-ToiletGoldenEmpty = golden toilet
    .desc = The HT-451G is the gold version of the device. It says on the side that it is made of the purest Mercurian gold and a real leather seat.
    .suffix = Empty

ent-ToiletGoldenDirtyWater = { ent-ToiletGoldenEmpty }
    .desc = { ent-ToiletGoldenEmpty.desc }
    .suffix = Dirty Water, StealTarget