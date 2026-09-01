# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 amogus <113782077+whateverusername0@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# SIS-Start
## --- Pirate Greeting ---
antag-pirate-briefing =
    Станция нагло отказалась платить за вашу «защиту».
    Вы - [gradient color1="{$hl1}" color2="{$hl2}" speed="0.8"]Капитан космических корсаров[/gradient]. Пора взять своё силой, разграбить отсеки и выкачать всю казну снабжения до последнего кредита!

antag-pirate-briefing-desc =
    • [color={$hl1}]Абордаж и Налёт:[/color] высаживайтесь на станцию и тащите на корабль всё ценное: от электроники и оружия до ящиков снабжения.
    • [color={$hl1}]Грузовой поддон:[/color] продавайте награбленный лут через поддон на своем корабле и заряжайте банк данных кредитами.
    • [color={$hl1}]Сифон Данных (Опасно):[/color] активация сифона начнёт выкачивать бюджет станции, но [gradient color1="{$hl1}" color2="{$hl2}" speed="0.8"]намертво заякорит ваш корабль[/gradient] и поднимет тревогу всего экипажа!
# Sis-End
antag-pirate-briefing-short =
    You are a pirate.
    Protect the ship, siphon the credits from the station, and raid it for even more loot!

pirate-roundend-append = The pirate crew plundered the station of it's valuables worth a total of [color=yellow]{$num}[/color] credits!

pirate-roundend-append-siphon = [color=green]The pirate crew managed to siphon[/color] [color=yellow]{$num}[/color] [color=green]credits from the station![/color]

pirate-roundend-append-lose = [color=red]The pirate crew lost their data bank![/color]

pirate-roundend-list =
    The pirates were:
