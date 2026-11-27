# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2022 Veritius <veritiusgaming@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

parse-minutes-fail = Не удалось распознать «{$minutes}» как время в минутах
parse-session-fail = Не найдена сессия пользователя «{$username}»

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = Добавляет указанное число минут к общему времени игры игрока
cmd-playtime_addoverall-help = Использование: {$command} <имя пользователя> <минуты>
cmd-playtime_addoverall-succeed = Общее время игры {$username} увеличено до {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <имя пользователя>
cmd-playtime_addoverall-arg-minutes = <минуты>
cmd-playtime_addoverall-error-args = Ожидалось ровно два аргумента

# - playtime_addrole
cmd-playtime_addrole-desc = Добавляет указанное число минут к времени игры на должности
cmd-playtime_addrole-help = Использование: {$command} <имя пользователя> <должность> <минуты>
cmd-playtime_addrole-succeed = Время игры {$username} на должности «{$role}» увеличено до {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <имя пользователя>
cmd-playtime_addrole-arg-role = <должность>
cmd-playtime_addrole-arg-minutes = <минуты>
cmd-playtime_addrole-error-args = Ожидалось ровно три аргумента

# - playtime_getoverall
cmd-playtime_getoverall-desc = Показывает общее время игры игрока в минутах
cmd-playtime_getoverall-help = Использование: {$command} <имя пользователя>
cmd-playtime_getoverall-success = Общее время игры {$username}: {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getoverall-arg-user = <имя пользователя>
cmd-playtime_getoverall-error-args = Ожидался ровно один аргумент

# - GetRoleTimer
cmd-playtime_getrole-desc = Показывает время игры игрока на одной или всех должностях
cmd-playtime_getrole-help = Использование: {$command} <имя пользователя> [должность]
cmd-playtime_getrole-no = Данные о времени игры на должностях отсутствуют
cmd-playtime_getrole-role = Должность: {$role}, Время игры: {$time}
cmd-playtime_getrole-overall = Общее время игры: {$time}
cmd-playtime_getrole-succeed = Время игры {$username}: {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getrole-arg-user = <имя пользователя>
cmd-playtime_getrole-arg-role = <должность|'Overall'>
cmd-playtime_getrole-error-args = Ожидался один или два аргумента

# - playtime_save
cmd-playtime_save-desc = Сохраняет данные о времени игры игрока в БД
cmd-playtime_save-help = Использование: {$command} <имя пользователя>
cmd-playtime_save-succeed = Время игры {$username} сохранено
cmd-playtime_save-arg-user = <имя пользователя>
cmd-playtime_save-error-args = Ожидался ровно один аргумент

## 'playtime_flush' command'

cmd-playtime_flush-desc = Переносит текущие показания счётчиков игрового времени в хранилище.
cmd-playtime_flush-help = Использование: {$command} [имя пользователя]
    Переносит данные только во внутреннее хранилище. В БД они сразу не записываются.
    Если указан пользователь, переносятся только его данные.

cmd-playtime_flush-error-args = Ожидалось ноль или один аргумент
cmd-playtime_flush-arg-user = [имя пользователя]
