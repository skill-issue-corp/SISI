# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 eclips_e <67359748+Just-a-Unity-Dev@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

defusable-examine-defused = {CAPITALIZE($name)} [color=lime]обезврежено[/color].
defusable-examine-live = {CAPITALIZE($name)} [color=red]тикает[/color], осталось [color=red]{$time}[/color] сек.
defusable-examine-live-display-off = {CAPITALIZE($name)} [color=red]тикает[/color], а таймер, похоже, выключен.
defusable-examine-inactive = {CAPITALIZE($name)} [color=lime]неактивно[/color], но его можно взвести.
defusable-examine-bolts = Положение болтов: {$down ->
[true] [color=red]опущены[/color]
*[false] [color=green]подняты[/color]
}.
