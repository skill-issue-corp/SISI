# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2023 themias <89101928+themias@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

objectives-round-end-result = {$count ->
    [1] Роль «{$agent}»: один участник.
    *[other] Роль «{$agent}», участников: {$count}.
}

objectives-round-end-result-in-custody = Под стражей: {$custody} из {$count}. Роль: {$agent}.

objectives-player-user-named = [color=White]{$name}[/color] ([color=gray]{$user}[/color])
objectives-player-named = [color=White]{$name}[/color]

objectives-no-objectives = {$custody}{$title} — {$agent}.
objectives-with-objectives = {$custody}{$title} — {$agent}. цели:

objectives-objective-success = {$objective} | [color=green]Успех![/color] ({TOSTRING($progress, "P0")})
objectives-objective-partial-success = {$objective} | [color=yellow]Частичный Успех![/color] ({TOSTRING($progress, "P0")})
objectives-objective-partial-failure = {$objective} | [color=orange]Частичный Провал![/color] ({TOSTRING($progress, "P0")})
objectives-objective-fail = {$objective} | [color=red]Провал![/color] ({TOSTRING($progress, "P0")})

objectives-in-custody = [bold][color=red]| ПОД СТРАЖЕЙ | [/color][/bold]
