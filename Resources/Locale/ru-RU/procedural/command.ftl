# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-dungen-desc = Генерирует подземелье по указанному шаблону, позиции и зерну генерации. Если у карты с указанным MapId нет MapGridComponent, подземелье появится в космосе.
cmd-dungen-help = dungen <MapId> <DungeonPreset> <PosX> <PosY> [seed]
cmd-dungen-arg-count = Нужно 4 аргумента.
cmd-dungen-map-parse = Не удалось распознать MapId.
cmd-dungen-mapgrid = Не удалось найти MapGrid.
cmd-dungen-config = Не удалось найти конфигурацию подземелья.
cmd-dungen-pos = Не удалось распознать позицию.
cmd-dungen-seed = Не удалось распознать зерно генерации.
cmd-dungen-start = Создаётся подземелье с зерном {$seed}

cmd-dungen-hint-map = Id Карты
cmd-dungen-hint-config = Конфигурация подземелья
cmd-dungen-hint-posx = Координата X
cmd-dungen-hint-posy = Координата Y
cmd-dungen-hint-seed = [Зерно]

cmd-dungen_preset_vis-desc = Создаёт тайловый предпросмотр шаблона подземелья.
cmd-dungen_preset_vis-help = dungen_preset_vis <mapid> <preset>

cmd-dungen_pack_vis-success = Успешно
cmd-dungen_pack_vis-desc = Создаёт тайловый предпросмотр набора подземелий.
cmd-dungen_pack_vis-help = dungen_pack_vis <mapid> <pack>
