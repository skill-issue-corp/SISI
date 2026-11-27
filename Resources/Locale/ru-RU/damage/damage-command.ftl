# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Damage command loc.

damage-command-description = Добавляет или снимает урон с сущности.
damage-command-help = Использование: {$command} <тип/группа> <количество> [ignoreResistances] [uid]

damage-command-arg-type = <тип или группа урона>
damage-command-arg-quantity = [количество]
damage-command-arg-target = [euid цели]

damage-command-error-type = Недопустимая группа или тип урона: {$arg}.
damage-command-error-euid = Недопустимый uid сущности: {$arg}.
damage-command-error-quantity = Недопустимое количество: {$arg}.
damage-command-error-bool = Недопустимое логическое значение: {$arg}.
damage-command-error-player = К сессии не привязана сущность. Укажите uid цели
damage-command-error-args = Недопустимое число аргументов
