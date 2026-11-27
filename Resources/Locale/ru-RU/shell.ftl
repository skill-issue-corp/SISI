# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 moonheart08 <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 20kdc <asdd2808@gmail.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Moony <moonheart08@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Morber <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 wrexbe <81056464+wrexbe@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Moony <moony@hellomouse.net>
# SPDX-FileCopyrightText: 2023 crazybrain23 <44417085+crazybrain23@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Brandon Hu <103440971+Brandon-Huu@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Simon <63975668+Simyon264@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### for technical and/or system messages

## General

shell-command-success = Команда выполнена
shell-invalid-command = Недопустимая команда.
shell-invalid-command-specific = Недопустимая команда {$commandName}.
shell-can-only-run-from-pre-round-lobby = Эту команду можно выполнить только в лобби до начала раунда.
shell-can-only-run-while-round-is-active = Эту команду можно выполнить только во время раунда.
shell-cannot-run-command-from-server = Эту команду нельзя выполнить с сервера.
shell-only-players-can-run-this-command = Эту команду могут выполнить только игроки.
shell-must-be-attached-to-entity = Для выполнения этой команды вы должны управлять сущностью.
shell-must-have-body = Для выполнения этой команды у вас должно быть тело.

shell-unknown-error = Произошла неизвестная ошибка.

## Arguments

shell-need-exactly-one-argument = Требуется ровно один аргумент.
shell-wrong-arguments-number-need-specific = Требуется аргументов: {$properAmount}. Указано: {$currentAmount}.
shell-argument-must-be-number = Аргумент должен быть числом.
shell-argument-must-be-boolean = Аргумент должен быть логическим значением.
shell-wrong-arguments-number = Неверное число аргументов.
shell-need-between-arguments = Требуется от {$lower} до {$upper} { $upper ->
    [one] аргумента
   *[other] аргументов
}!
shell-need-minimum-arguments = Требуется минимум {$minimum} { $minimum ->
    [one] аргумент
    [few] аргумента
   *[other] аргументов
}!
shell-need-minimum-one-argument = Требуется хотя бы один аргумент!
shell-need-exactly-zero-arguments = Эта команда не принимает аргументы.

shell-argument-uid = EntityUid

## Guards

shell-missing-required-permission = Для этой команды требуется право {$perm}!
shell-entity-is-not-mob = Целевая сущность не является мобом!
shell-invalid-entity-id = Недопустимый ID сущности.
shell-invalid-grid-id = Недопустимый ID сетки.
shell-invalid-map-id = Недопустимый ID карты.
shell-invalid-entity-uid = Недопустимый uid сущности: {$uid}
shell-invalid-bool = Недопустимое логическое значение.
shell-invalid-bool-value = Недопустимое логическое значение: «{$value}»
shell-entity-uid-must-be-number = EntityUid должен быть числом.
shell-could-not-find-entity = Не удалось найти сущность {$entity}
shell-could-not-find-entity-with-uid = Не удалось найти сущность с uid {$uid}
shell-entity-with-uid-lacks-component = У сущности с uid {$uid} отсутствует компонент {$componentName}.
shell-entity-target-lacks-component = У целевой сущности отсутствует компонент {$componentName}.
shell-invalid-color-hex = Недопустимый шестнадцатеричный код цвета!
shell-target-player-does-not-exist = Указанного игрока не существует!
shell-target-entity-does-not-have-message = У целевой сущности отсутствует {$missing}!
shell-timespan-minutes-must-be-correct = Недопустимая длительность в минутах: {$span}.
shell-argument-must-be-prototype = Аргумент {$index} должен быть допустимым прототипом типа {LOC($prototypeName)}!
shell-argument-number-must-be-between = Аргумент {$index} должен быть числом от {$lower} до {$upper}!
shell-argument-station-id-invalid = Аргумент {$index} должен быть допустимым id станции!
shell-argument-map-id-invalid = Аргумент {$index} должен быть допустимым id карты!
shell-argument-number-invalid = Аргумент {$index} должен быть допустимым числом!
shell-argument-chat-invalid = Аргумент {$index} должен быть допустимым чатом!

# Hints
shell-argument-username-hint = <имя_пользователя>
shell-argument-username-optional-hint = [имя_пользователя]
