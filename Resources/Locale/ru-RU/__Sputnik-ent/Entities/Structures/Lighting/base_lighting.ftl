ent-BaseWallLight = { "" }
    .desc = { "" }

ent-AlwaysPoweredWallLight = светильник
    .desc = Всегда работающий светильник.
    .suffix = Всегда запитанный

ent-PoweredlightEmpty = светильник
    .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой-трубкой.
    .suffix = Пустой

# AUTOGEN-Start
# .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой-трубкой.
# AUTOGEN-End TODO(Update_Locale):
ent-Poweredlight = { ent-PoweredlightEmpty }
    .desc = { ent-PoweredlightEmpty.desc }

# AUTOGEN-Start
# .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой-трубкой.
# .suffix = LED, Светодиод
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightLED = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = LED

ent-AlwaysPoweredLightLED = { ent-AlwaysPoweredWallLight }
    .suffix = Всегда запитанный, LED, Светодиод
    .desc = { ent-AlwaysPoweredWallLight.desc }

# AUTOGEN-Start
# .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой-трубкой.
# .suffix = Экстерьер
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightExterior = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = Exterior

ent-AlwaysPoweredLightExterior = { ent-AlwaysPoweredWallLight }
    .suffix = Всегда запитанный, Экстерьер
    .desc = { ent-AlwaysPoweredWallLight.desc }

# AUTOGEN-Start
# .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой-трубкой.
# .suffix = Натриевый
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightSodium = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }
    .suffix = Sodium

ent-AlwaysPoweredLightSodium = { ent-AlwaysPoweredWallLight }
    .suffix = Всегда запитанный, Натриевый
    .desc = { ent-AlwaysPoweredWallLight.desc }

ent-SmallLight = маленький светильник
    .desc = Всегда работающий светильник.
    .suffix = Всегда запитанный

ent-PoweredSmallLightEmpty = маленький светильник
    .desc = Осветительный прибор. Потребляет энергию и излучает свет, если оснащён лампой накаливания.
    .suffix = Пустой

ent-PoweredLEDSmallLight = { ent-PoweredSmallLightEmpty }
    .suffix = LED, Светодиод
    .desc = { ent-PoweredSmallLightEmpty.desc }

ent-PoweredDimSmallLight = { ent-PoweredSmallLightEmpty }
    .suffix = Тусклый
    .desc = { ent-PoweredSmallLightEmpty.desc }

ent-PoweredWarmSmallLight = { ent-PoweredSmallLightEmpty }
    .suffix = Тёплый
    .desc = { ent-PoweredSmallLightEmpty.desc }

ent-PoweredSmallLight = { ent-PoweredSmallLightEmpty }
    .desc = { ent-PoweredSmallLightEmpty.desc }

ent-EmergencyLight = аварийная лампа
    .desc = Маленькая лампочка с внутренним аккумулятором, которая включается, как только перестаёт получать питание извне. Технология Nanotrasen позволяет ей адаптировать свой цвет для оповещения экипажа об обстановке на станции.

ent-PoweredlightColor = { ent-Poweredlight }
    .desc = { ent-Poweredlight.desc }

ent-AlwaysPoweredlightColor = { ent-AlwaysPoweredWallLight }
    .desc = { ent-AlwaysPoweredWallLight.desc }

# AUTOGEN-Start
# .suffix = Голубой
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightCyan = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Cyan

# AUTOGEN-Start
# .suffix = Всегда запитанный, Голубой
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightCyan = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Cyan

# AUTOGEN-Start
# .suffix = Синий
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightBlue = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Blue

# AUTOGEN-Start
# .suffix = Всегда запитанный, Синий
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightBlue = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Blue

# AUTOGEN-Start
# .suffix = Жёлтый
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightYellow = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Yellow

# AUTOGEN-Start
# .suffix = Всегда запитанный, Жёлтый
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightYellow = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Yellow

# AUTOGEN-Start
# .suffix = Розовый
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightPink = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Pink

# AUTOGEN-Start
# .suffix = Всегда запитанный, Розовый
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightPink = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Pink

# AUTOGEN-Start
# .suffix = Оранжевый
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightOrange = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Orange

# AUTOGEN-Start
# .suffix = Всегда запитанный, Оранжевый
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightOrange = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Orange

# AUTOGEN-Start
# .desc = null
# .suffix = Чёрный
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightBlack = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Black

# AUTOGEN-Start
# .suffix = Всегда запитанный, Чёрный
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightBlack = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Black

# AUTOGEN-Start
# .suffix = Красный
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightRed = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Red

# AUTOGEN-Start
# .suffix = Всегда запитанный, Красный
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightRed = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Red

# AUTOGEN-Start
# .suffix = Зелёный
# AUTOGEN-End TODO(Update_Locale):
ent-PoweredlightGreen = { ent-PoweredlightColor }
    .desc = { ent-PoweredlightColor.desc }
    .suffix = Green

# AUTOGEN-Start
# .suffix = Всегда запитанный, Зелёный
# AUTOGEN-End TODO(Update_Locale):
ent-AlwaysPoweredlightGreen = { ent-AlwaysPoweredlightColor }
    .desc = { ent-AlwaysPoweredlightColor.desc }
    .suffix = Always Powered, Green