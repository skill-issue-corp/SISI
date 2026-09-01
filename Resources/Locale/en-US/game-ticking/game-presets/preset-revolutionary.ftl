# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Vasilis <vasilis@pikachu.systems>
# SPDX-FileCopyrightText: 2023 coolmankid12345 <55817627+coolmankid12345@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 coolmankid12345 <coolmankid12345@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 BombasterDS <115770678+BombasterDS@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Killerqu00 <47712032+Killerqu00@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Mr. 27 <45323883+Dutch-VanDerLinde@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Rev Head

roles-antag-rev-head-name = Head Revolutionary
roles-antag-rev-head-objective = Your objective is to take over the station by converting people to your cause and eliminating all members of Command.

## Trauma - rewrote
# SIS-Start
## --- HeadRev Greeting ---
head-rev-role-greeting =
    Вы [color={$hl1}]Глава Революции[/color]!
    Ваша главная цель: свергнуть тиранию [color={$hl1}]NanoTrasen[/color] и [color={$hl1}]устранить весь командный состав[/color] станции любыми средствами.

head-rev-role-desc =
    • [color={$hl1}]Вербуйте сторонников:[/color] используйте своё снаряжение, чтобы обращать членов экипажа на сторону восстания.
    • [color={$hl1}]Ограничения:[/color] обращение не сработает на тех, кто носит [color={$hl1}]защиту для глаз[/color] (очки/маски) или имеет имплант [color={$hl1}]«Щит Разума»[/color].
    • [color={$hl1}]Берегите лидеров:[/color] если все Главы Революции погибнут - восстание будет подавлено, а все обращенные вернутся к обычной работе.

    {"["}color={$hl1}]Viva la revolución![/color]
# SIS-End

## Trauma - rewrote
head-rev-briefing =
    Build rev industrial buildings.
    Get rid of all heads to take over the station.

head-rev-break-mindshield = The mindshield implant was destroyed!

## Rev

roles-antag-rev-name = Revolutionary
roles-antag-rev-objective = Your objective is to ensure the safety and follow the orders of the head revolutionaries, and to help them take over the station by eliminating all members of Command.

rev-break-control = {$name} has remembered their true allegiance!

# SIS-Start
## --- Rev Greeting ---
rev-role-greeting =
    Вы [color={$hl1}]Революционер[/color].
    Вам поручено защищать [color={$hl1}]Глав Революции[/color] и помочь им захватить станцию.
    Действуйте сообща, чтобы устранить или обратить [color={$hl1}]весь командный состав[/color]!

    {"["}color={$hl1}]Viva la revolución![/color]
# SIS-End

rev-briefing = Help the head revolutionaries kill, restrain, or convert all members of Command to take over the station.

## General

rev-title = Revolutionaries
rev-description = Revolutionaries hidden among the crew are seeking to convert others to their cause and overthrow Command.

rev-not-enough-ready-players = Not enough players readied up for the game. There were {$readyPlayersCount} players readied up out of {$minimumPlayers} needed. Can't start Revolutionaries.
rev-no-one-ready = No players readied up! Can't start Revolutionaries.
rev-no-heads = There were no Head Revolutionaries to be selected. Can't start Revolutionaries.

rev-won = The head revolutionaries survived and successfully seized control of the station.

rev-lost = All head revolutionaries have died, and Command survived.

rev-stalemate = Both Command and the head revolutionaries have all died. It's a draw.

rev-reverse-stalemate = Both Command and the head revolutionaries survived.

rev-headrev-count = {$initialCount ->
    [one] There was one head revolutionary:
    *[other] There were {$initialCount} head revolutionaries:
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) converted {$count} {$count ->
    [one] person
    *[other] people
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] converted {$count} {$count ->
    [one] person
    *[other] people
}

## Deconverted window

rev-deconverted-title = Deconverted!
rev-deconverted-text =
    As the last head revolutionary has died, the revolution is over.

    You are no longer a revolutionary, so be nice.
rev-deconverted-confirm = Confirm
