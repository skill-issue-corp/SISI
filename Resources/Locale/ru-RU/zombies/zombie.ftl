# SPDX-FileCopyrightText: 2022 EmoGarbage404 <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Tom Leys <tom@crump-leys.com>
# SPDX-FileCopyrightText: 2024 Tayrtahn <tayrtahn@gmail.com>
# SPDX-FileCopyrightText: 2024 psykana <36602558+psykana@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

zombie-transform = {CAPITALIZE($target)} превращается в зомби!

# SIS-Start
zombie-role-greeting =
    Ваша смертная плоть погибла, но вы восстали как [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Зомби[/gradient]!
    Ваш разум поглощен голодом.
    Ваша цель: [color={$hl1}]охотиться на живых[/color] и заражать их, пополняя ряды орды.

zombie-role-greeting-desc =
    • [color={$hl1}]Координация:[/color] держитесь вместе с другими зомби и защищайте [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Нулевых Пациентов[/gradient] — ваших прародителей и лидеров.
    • [color={$hl1}]Заражение:[/color] атакуйте выживших когтями и зубами, разнося вирус по всей станции.
    • [color={$hl1}]Конец человечества:[/color] не дайте экипажу спастись на шаттле и обратите станцию в царство мертвых!
# SIS-End

zombie-generic = зомби
zombie-name-prefix = зомбированный {$baseName}
zombie-role-desc =  Злобное существо из мира мёртвых.
zombie-role-rules = Ваша роль — [color={role-type-team-antagonist-color}][bold]{role-type-team-antagonist-name}[/bold][/color]. Ищите живых и кусайте их, чтобы заразить и превратить в зомби. Объединитесь с другими зомби и оставшимися нулевыми пациентами, чтобы захватить станцию.

zombie-permadeath = На этот раз вы действительно мертвы.

zombification-resistance-coefficient-value = - Вероятность [color=violet]Заражения[/color] снижена на [color=lightblue]{$value}%[/color].

zombie-roleban-ghosted = Вы стали призраком, потому что вам запрещено играть в роли Зомби.
