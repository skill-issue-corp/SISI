# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = Временно разрешает пользователю обходить стандартные проверки при подключении.
cmd-grant_connect_bypass-help = Использование: grant_connect_bypass <пользователь> [длительность в минутах]
    Временно разрешает пользователю подключаться в обход обычных ограничений.
    Исключение действует только на этом игровом сервере и истекает через 1 час (по умолчанию).
    Пользователь может подключиться независимо от белого списка, режима «бункер» и лимита игроков.

cmd-grant_connect_bypass-arg-user = <пользователь>
cmd-grant_connect_bypass-arg-duration = [длительность в минутах]

cmd-grant_connect_bypass-invalid-args = Ожидалось 1 или 2 аргумента
cmd-grant_connect_bypass-unknown-user = Не удалось найти пользователя «{$user}»
cmd-grant_connect_bypass-invalid-duration = Недопустимая длительность «{$duration}»

cmd-grant_connect_bypass-success = Для пользователя «{$user}» добавлено исключение
