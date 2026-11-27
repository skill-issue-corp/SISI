ent-CoreSubstation = { "" }
    .desc = { "" }

ent-BaseSubstation = подстанция
    .desc = Снижает входное напряжение.

ent-BaseSubstationWall = настенная подстанция
    .desc = Подстанция для небольших шаттлов и тесных помещений.

ent-SubstationBasic = { ent-BaseSubstation }
    .desc = { ent-BaseSubstation.desc }
    .suffix = Базовая, 2.5МДж

ent-SubstationBasicEmpty = { ent-SubstationBasic }
    .desc = { ent-SubstationBasic.desc }
    .suffix = Пусто

ent-SubstationWallBasic = { ent-BaseSubstationWall }
    .desc = { ent-BaseSubstationWall.desc }
    .suffix = Базовая, 2МДж

ent-BaseSubstationWallFrame = каркас настенной подстанции
    .desc = Каркас для сборки подстанции.