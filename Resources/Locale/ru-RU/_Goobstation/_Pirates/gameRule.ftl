# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 amogus <113782077+whateverusername0@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# SIS-Start
pirate-role-greeting =
    Станция нагло отказалась платить за вашу [gradient color1="{$hl1}" color2="{$hl2}" speed="0.8"]«защиту»[/gradient].
    Пора взять своё силой, разграбить отсеки и выкачать всю казну снабжения до последнего кредита!

pirate-role-greeting-desc =
    • [color={$hl1}]Абордаж и Налёт:[/color] высаживайтесь на станцию и тащите на корабль всё ценное: от электроники и оружия до ящиков снабжения.
    • [color={$hl1}]Грузовой поддон:[/color] продавайте награбленный лут через поддон на своем корабле и заряжайте банк данных кредитами.
    • [color={$hl1}]Сифон Данных (Опасно):[/color] активация сифона начнёт выкачивать бюджет станции, но [gradient color1="{$hl1}" color2="{$hl2}" speed="0.8"]намертво заякорит ваш корабль[/gradient] и поднимет тревогу всего экипажа!
# SIS-End

antag-pirate-briefing-short =
    Вы пират.
    Защищайте корабль, выкачивайте кредиты со станции и совершайте налёты ради ещё большей добычи!

pirate-roundend-append = Пиратская команда награбила на станции ценностей на общую сумму [color=yellow]{$num}[/color] { $num ->
    [one] кредит
    [few] кредита
    [many] кредитов
   *[other] кредита
}!

pirate-roundend-append-siphon = [color=green]Пиратской команде удалось выкачать[/color] [color=yellow]{$num}[/color] [color=green]кредитов со станции![/color]

pirate-roundend-append-lose = [color=red]Пиратская команда потеряла свой банк данных![/color]

pirate-roundend-list =
    Пиратами были:
