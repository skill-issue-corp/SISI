ent-BaseRune = руна
    .desc = { "" }

ent-CollideRune = руна срабатывания при касании
    .desc = { ent-BaseRune.desc }

ent-ActivateRune = руна ручной активации
    .desc = { ent-CollideRune.desc }

ent-CollideTimerRune = руна с задержкой при касании
    .desc = { ent-CollideRune.desc }

ent-ExplosionRune = руна взрыва
    .desc = { ent-CollideRune.desc }

ent-StunRune = руна оглушения
    .desc = { ent-CollideRune.desc }

ent-IgniteRune = руна воспламенения
    .desc = { ent-CollideRune.desc }

ent-ExplosionTimedRune = руна взрыва с задержкой
    .desc = { ent-CollideTimerRune.desc }

ent-ExplosionActivateRune = руна взрыва с ручной активацией
    .desc = { ent-ActivateRune.desc }

ent-FlashRune = руна вспышки
    .desc = { ent-ActivateRune.desc }

ent-FlashRuneTimer = руна вспышки с задержкой
    .desc = { ent-CollideTimerRune.desc }