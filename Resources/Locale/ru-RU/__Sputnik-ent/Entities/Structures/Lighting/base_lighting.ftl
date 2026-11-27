ent-BaseWallLight = { "" }
    .desc = { "" }

ent-AlwaysPoweredWallLight = светильник
    .desc = Светильник с постоянным питанием.
    .suffix = Постоянное питание

ent-PoweredlightEmpty = светильник
    .desc = Осветительный прибор. Потребляет энергию и светит, если установлена световая трубка.
    .suffix = Пусто

ent-Poweredlight = { ent-PoweredlightEmpty }
    .desc = { ent-PoweredlightEmpty.desc }

ent-PoweredlightLED = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = Светодиодный

ent-AlwaysPoweredLightLED = { ent-AlwaysPoweredWallLight }
    .desc = { ent-AlwaysPoweredWallLight.desc }
    .suffix = Постоянное Питание, Светодиодный

ent-PoweredlightExterior = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = Наружный

ent-AlwaysPoweredLightExterior = { ent-AlwaysPoweredWallLight }
    .desc = { ent-AlwaysPoweredWallLight.desc }
    .suffix = Постоянное Питание, Наружный

ent-PoweredlightSodium = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = Натриевый

ent-AlwaysPoweredLightSodium = { ent-AlwaysPoweredWallLight }
    .desc = { ent-AlwaysPoweredWallLight.desc }
    .suffix = Постоянное Питание, Натриевый

ent-SmallLight = малый светильник
    .desc = Светильник с постоянным питанием.
    .suffix = Всегда Под Напряжением

ent-PoweredSmallLightEmpty = малый светильник
    .desc = Осветительный прибор. Потребляет энергию и светит, если установлена лампочка.
    .suffix = Пусто

ent-PoweredLEDSmallLight = { ent-PoweredSmallLightEmpty }
    .desc = { ent-PoweredSmallLightEmpty.desc }
    .suffix = Светодиодный

ent-PoweredDimSmallLight = { ent-PoweredSmallLightEmpty }
    .desc = { ent-PoweredSmallLightEmpty.desc }
    .suffix = Тусклый

ent-PoweredWarmSmallLight = { ent-PoweredSmallLightEmpty }
    .desc = { ent-PoweredSmallLightEmpty.desc }
    .suffix = Тёплый

ent-PoweredSmallLight = { ent-PoweredSmallLightEmpty }
    .desc = { ent-PoweredSmallLightEmpty.desc }

ent-EmergencyLight = аварийный светильник
    .desc = Небольшой светильник со встроенной батареей. Включается сразу после потери питания. Технология NanoTrasen позволяет ему менять цвет и сообщать экипажу о состоянии станции.

ent-PoweredlightColor = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }

ent-AlwaysPoweredlightColor = { ent-AlwaysPoweredWallLight }
    .desc = { ent-AlwaysPoweredWallLight.desc }

ent-PoweredlightCyan = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Голубой

ent-AlwaysPoweredlightCyan = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Голубой

ent-PoweredlightBlue = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Синий

ent-AlwaysPoweredlightBlue = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Синий

ent-PoweredlightYellow = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Жёлтый

ent-AlwaysPoweredlightYellow = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Жёлтый

ent-PoweredlightPink = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Розовый

ent-AlwaysPoweredlightPink = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Розовый

ent-PoweredlightOrange = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Оранжевый

ent-AlwaysPoweredlightOrange = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Оранжевый

ent-PoweredlightBlack = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Чёрный

ent-AlwaysPoweredlightBlack = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Чёрный

ent-PoweredlightRed = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Красный

ent-AlwaysPoweredlightRed = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Красный

ent-PoweredlightGreen = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Зелёный

ent-AlwaysPoweredlightGreen = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Постоянное Питание, Зелёный