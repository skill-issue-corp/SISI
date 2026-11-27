ent-BaseWindowStructure = окно
    .desc = Только не заляпайте там стекло.

ent-Window = { ent-BaseWindowStructure }
    .desc = { ent-BaseWindowStructure.desc }

ent-TintedWindow = тонированное окно
    .desc = Умное тонированное окно с возможностью переключения состояния.

ent-TintedWindowTransparent = { ent-TintedWindow }
    .desc = { ent-TintedWindow.desc }
    .suffix = Прозрачное

ent-BaseRCDResistant = { "" }
    .desc = { "" }

ent-WindowRCDResistant = { ent-Window }
    .desc = { ent-Window.desc }

ent-BaseWindowStructureDirectional = направленное окно
    .desc = Только не заляпайте там стекло.

ent-WindowDirectional = { ent-BaseWindowStructureDirectional }
    .desc = { ent-BaseWindowStructureDirectional.desc }

ent-WindowDirectionalRCDResistant = { ent-WindowDirectional }
    .desc = { ent-WindowDirectional.desc }

ent-WindowFrostedDirectional = направленное матовое окно
    .desc = Только не заляпайте там стекло.

ent-WindowDiagonal = { ent-Window }
    .desc = { ent-Window.desc }
    .suffix = по диагонали