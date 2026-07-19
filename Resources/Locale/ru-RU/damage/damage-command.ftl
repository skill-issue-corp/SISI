# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Damage command loc.

damage-command-description = Добавляет или убирает урон у сущности.
damage-command-help = Использование: {$command} <тип/группа> <количество> [ignoreResistances] [uid]

damage-command-arg-type = <тип или группа урона>
damage-command-arg-quantity = [количество]
damage-command-arg-target = [uid цели]

damage-command-error-type = {$arg} не является допустимой группой или типом урона.
damage-command-error-euid = {$arg} не является допустимым uid сущности.
damage-command-error-quantity = {$arg} не является допустимым количеством.
damage-command-error-bool = {$arg} не является допустимым bool-значением.
damage-command-error-player = К сессии не привязана сущность. Вы должны указать uid цели
damage-command-error-args = Неверное количество аргументов
