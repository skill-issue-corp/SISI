ent-BaseWindowStructure = window
    .desc = Don't smudge up the glass down there.

ent-Window = { ent-BaseWindowStructure }
    .desc = { ent-BaseWindowStructure.desc }

ent-TintedWindow = tinted window
    .desc = Smart tinted window with state switching option.

ent-TintedWindowTransparent = { ent-TintedWindow }
    .desc = { ent-TintedWindow.desc }
    .suffix = Transparent

ent-BaseRCDResistant = { "" }
    .desc = { "" }

ent-WindowRCDResistant = { ent-Window }
    .desc = { ent-Window.desc }

ent-BaseWindowStructureDirectional = directional window
    .desc = Don't smudge up the glass down there.

ent-WindowDirectional = { ent-BaseWindowStructureDirectional }
    .desc = { ent-BaseWindowStructureDirectional.desc }

ent-WindowDirectionalRCDResistant = { ent-WindowDirectional }
    .desc = { ent-WindowDirectional.desc }

ent-WindowFrostedDirectional = directional frosted window
    .desc = Don't smudge up the glass down there.

ent-WindowDiagonal = { ent-Window }
    .desc = { ent-Window.desc }
    .suffix = diagonal