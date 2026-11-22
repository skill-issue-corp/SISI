# AUTOGEN-Start
# .suffix = Адмем
# AUTOGEN-End TODO(Update_Locale):
ent-SprayPainterRecharging = spray painter
    .desc = A spray painter for painting airlocks, pipes, and other items.
    .suffix = Admeme

# AUTOGEN-Start
# краскопульт
# .desc = Краскопульт для окрашивания шлюзов и труб.
# AUTOGEN-End TODO(Update_Locale):
ent-SprayPainter = { ent-SprayPainterRecharging }
    .desc = { ent-SprayPainterRecharging.desc }

ent-SprayPainterBorg = experimental spray painter
    .desc = An experimental recharging spray painter that can infinitely replicate compressed paint.
    .suffix = Borg

ent-SprayPainterEmpty = { ent-SprayPainter }
    .suffix = Пустой
    .desc = { ent-SprayPainter.desc }

ent-SprayPainterAmmo = картридж краски
    .desc = Картридж с жёстко спресованной краской, обычно используемый для краскопульта.