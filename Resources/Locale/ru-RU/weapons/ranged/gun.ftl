# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 PixelTK <85175107+PixelTheKermit@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Errant <35878406+errant@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 MendaxxDev <153332064+MendaxxDev@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 TaralGit <76408146+TaralGit@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vordenburg <114301317+Vordenburg@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 and_a <and_a@DESKTOP-RJENGIR>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Errant <35878406+Errant-4@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later


gun-selected-mode-examine = Текущий режим огня: [color={$color}]{$mode}[/color].
gun-fire-rate-examine = Скорострельность: [color={$color}]{$fireRate}[/color] выстр. в секунду.
gun-selector-verb = Переключить на {$mode}
gun-selected-mode = Выбран режим {$mode}
gun-disabled = Вы не можете пользоваться огнестрельным оружием!
gun-set-fire-mode-examine = Установлен режим [color=yellow]{$mode}[/color].
gun-set-fire-mode-popup = Установлен режим {$mode}
gun-magazine-whitelist-fail = Это не подходит к оружию!
gun-magazine-fired-empty = Боеприпасы закончились!

# SelectiveFire
gun-SemiAuto = одиночные
gun-Burst = очередь
gun-FullAuto = автоматический

# BallisticAmmoProvider
gun-ballistic-cycle = Передёрнуть
gun-ballistic-cycled = Передёрнуто
gun-ballistic-cycled-empty = Передёрнуто (пусто)
gun-ballistic-transfer-invalid = {CAPITALIZE($ammoEntity)} не помещается в {$targetEntity}!
gun-ballistic-transfer-empty = {CAPITALIZE($entity)} пусто.
gun-ballistic-transfer-target-full = {CAPITALIZE($entity)} уже полностью заряжено.

# CartridgeAmmo
gun-cartridge-spent = Патрон [color=red]стреляный[/color].
gun-cartridge-unspent = Патрон [color=lime]нестреляный[/color].

# BatteryAmmoProvider
gun-battery-examine = Осталось заряда на выстрелы: [color={$color}]{$count}[/color].

# CartridgeAmmoProvider
gun-chamber-bolt-ammo = Затвор открыт
gun-chamber-bolt = Затвор [color={$color}]{$bolt}[/color].
gun-chamber-bolt-closed = Затвор закрыт
gun-chamber-bolt-opened = Затвор открыт
gun-chamber-bolt-close = Закрыть затвор
gun-chamber-bolt-open = Открыть затвор
gun-chamber-bolt-closed-state = открыт
gun-chamber-bolt-open-state = закрыт
gun-chamber-rack = Передёрнуть затвор

# MagazineAmmoProvider
gun-magazine-examine = Осталось выстрелов: [color={$color}]{$count}[/color].

# RevolverAmmoProvider
gun-revolver-empty = Револьвер пуст
gun-revolver-full = Револьвер полностью заряжен
gun-revolver-insert = Заряжено
gun-revolver-spin = Прокрутить барабан
gun-revolver-spun = Барабан прокручен
gun-speedloader-empty = Спидлоадер пуст

# GunSpreadModifier
examine-gun-spread-modifier-reduction = Разброс уменьшен на [color=yellow]{$percentage}%[/color].
examine-gun-spread-modifier-increase = Разброс увеличен на [color=yellow]{$percentage}%[/color].
