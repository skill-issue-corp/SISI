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

zombie-transform = {CAPITALIZE(THE($target))} turned into a zombie!
# SIS-Start
## --- Zombie Greeting ---
zombie-infection-greeting =
    Ваша смертная плоть погибла, но вы восстали как [color={$hl1}]Зомби[/color]!
    Ваш разум поглощен голодом.
    Ваша цель: [color={$hl1}]охотиться на живых[/color] и заражать их, пополняя ряды орды.

zombie-infection-desc =
    • [color={$hl1}]Координация:[/color] держитесь вместе с другими зомби и защищайте [color={$hl1}]Нулевых Пациентов[/color] — ваших прародителей и лидеров.
    • [color={$hl1}]Заражение:[/color] атакуйте выживших когтями и зубами, разнося вирус по всей станции.
    • [color={$hl1}]Конец человечества:[/color] не дайте экипажу спастись на шаттле и обратите станцию в царство мертвых!
# SIS-End

zombie-generic = zombie
zombie-name-prefix = zombified {$baseName}
zombie-role-desc =  A malevolent creature of the dead.
zombie-role-rules = You are a [color={role-type-team-antagonist-color}][bold]{role-type-team-antagonist-name}[/bold][/color]. Search out the living and bite them in order to infect them and turn them into zombies. Work together with the other zombies and remaining initial infected to overtake the station.

zombie-permadeath = This time, you're dead for real.

zombification-resistance-coefficient-value = - [color=violet]Infection[/color] chance reduced by [color=lightblue]{$value}%[/color].

zombie-roleban-ghosted = You have been ghosted because you are banned from playing the Zombie role.
