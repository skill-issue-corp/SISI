ent-BaseLandMine = { "" }
    .desc = { "" }

ent-LandMineKickUnarmed = кик-мина
    .desc = { ent-BaseLandMine.desc }

ent-LandMineKick = { ent-LandMineKickUnarmed }
    .desc = { ent-LandMineKickUnarmed.desc }
    .suffix = взведена

ent-LandMineModularUnarmed = модульная мина
    .desc = Внутри этой штуковины может скрываться сколько угодно опасностей. Или велосипедный клаксон.

ent-LandMineModular = { ent-LandMineModularUnarmed }
    .desc = { ent-LandMineModularUnarmed.desc }
    .suffix = взведена

ent-LandMineExplosiveUnarmed = взрывная мина
    .desc = { ent-BaseLandMine.desc }

ent-LandMineExplosive = { ent-LandMineExplosiveUnarmed }
    .desc = { ent-LandMineExplosiveUnarmed.desc }
    .suffix = взведена