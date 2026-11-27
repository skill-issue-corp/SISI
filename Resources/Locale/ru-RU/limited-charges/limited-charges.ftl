# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

limited-charges-charges-remaining = {$charges ->
    [one] Остался [color=fuchsia]{$charges}[/color] заряд.
    [few] Осталось [color=fuchsia]{$charges}[/color] заряда.
    *[many] Осталось [color=fuchsia]{$charges}[/color] зарядов.
}

limited-charges-max-charges = Накоплено [color=green]максимальное[/color] число зарядов.
limited-charges-recharging = {$seconds ->
    [one] До следующего заряда осталась [color=yellow]{$seconds}[/color] секунда.
    [few] До следующего заряда осталось [color=yellow]{$seconds}[/color] секунды.
    *[many] До следующего заряда осталось [color=yellow]{$seconds}[/color] секунд.
}
limited-charges-no-charges = Заряды закончились!
