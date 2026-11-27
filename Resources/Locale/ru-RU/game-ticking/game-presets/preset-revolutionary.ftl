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

roles-antag-rev-head-name = Глава Революции
roles-antag-rev-head-objective = Захватите станцию. Обращайте людей на свою сторону и устраните весь Командный состав.

## Trauma - rewrote

# SIS-Start
head-rev-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Глава Революции[/gradient]!
    Ваша главная цель: свергнуть тиранию [color={$hl1}]NanoTrasen[/color] и [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]устранить весь командный состав[/gradient] станции любыми средствами.

head-rev-role-greeting-desc =
    • [color={$hl1}]Вербуйте сторонников:[/color] используйте своё снаряжение, чтобы обращать членов экипажа на сторону восстания.
    • [color={$hl1}]Ограничения:[/color] обращение не сработает на тех, кто носит [color={$hl1}]защиту для глаз[/color] (очки/маски) или имеет имплант [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]«Щит Разума»[/gradient].
    • [color={$hl1}]Берегите лидеров:[/color] если все Главы Революции погибнут - восстание будет подавлено, а все обращенные вернутся к обычной работе.

    {"["}color={$hl1}]Viva la revolución![/color]
# SIS-End

## Trauma - rewrote
head-rev-briefing =
    Стройте промышленные здания революционеров.
    Устраните всех глав отделов, чтобы захватить станцию.

head-rev-break-mindshield = Имплант «щит разума» уничтожен!

## Rev

roles-antag-rev-name = Революционер
roles-antag-rev-objective = Защищайте глав революции, выполняйте их приказы и помогите им захватить станцию, устранив весь Командный состав.

rev-break-control = {$name} вспоминает, кому на самом деле хранит верность!

# SIS-Start
rev-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Революционер[/gradient].
    Вам поручено защищать [color={$hl1}]Глав Революции[/color] и помочь им захватить станцию.
    Действуйте сообща, чтобы устранить или обратить [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]весь командный состав[/gradient]!

rev-role-greeting-desc =
    • [color={$hl1}]Деконвертация:[/color] остерегайтесь поимки службой безопасности, в вас могут подавить революционные идеи путём установки [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]«Щита Разума»[/gradient].
    • [color={$hl1}]Берегите лидеров:[/color] если все Главы Революции погибнут - восстание будет подавлено, а все обращенные вернутся к обычной работе.

    {"["}color={$hl1}]Viva la revolución![/color]
# SIS-End

rev-briefing = Помогите главам революции захватить станцию. Убейте, обездвижьте или обратите весь Командный состав.

## General

rev-title = Революционеры
rev-description = Скрывающиеся среди экипажа революционеры пытаются привлечь сторонников и свергнуть Командование.

rev-not-enough-ready-players = Недостаточно готовых игроков. Готово {$readyPlayersCount} из {$minimumPlayers} необходимых. Не удалось запустить режим «Революционеры».
rev-no-one-ready = Никто из игроков не готов! Не удалось запустить режим «Революционеры».
rev-no-heads = Некого назначить Главой Революции. Не удалось запустить режим «Революционеры».

rev-won = Главы революции выжили и захватили станцию.

rev-lost = Все главы революции погибли, а Командование выжило.

rev-stalemate = Погибли и Командование, и все главы революции. Ничья.

rev-reverse-stalemate = И Командование, и главы революции выжили.

rev-headrev-count = {$initialCount ->
    [one] Был {$initialCount} глава революции:
    [few] Было {$initialCount} главы революции:
    *[many] Было {$initialCount} глав революции:
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) - обращено {$count} {$count ->
    [one] человек
    [few] человека
    *[many] человек
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] - обращено {$count} {$count ->
    [one] человек
    [few] человека
    *[many] человек
}

## Deconverted window

rev-deconverted-title = Деконвертация!
rev-deconverted-text =
    Последний глава революции погиб. Революция окончена.

    Вы больше не революционер. Ведите себя прилично.
rev-deconverted-confirm = Подтвердить
