# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-mapping-desc = Создаёт или загружает карту и телепортирует вас на неё.
cmd-mapping-help = Использование: mapping [MapID] [путь] [сетка]
cmd-mapping-server = Эту команду могут использовать только игроки.
cmd-mapping-error = При создании новой карты произошла ошибка.
cmd-mapping-try-grid = Не удалось загрузить файл как карту. Попытка загрузить файл как сетку...
cmd-mapping-success-load = Из файла {$path} создана неинициализированная карта с id {$mapId}.
cmd-mapping-success-load-grid = Неинициализированная сетка из файла {$path} загружена на новую карту с id {$mapId}.
cmd-mapping-success = Создана неинициализированная карта с id {$mapId}.
cmd-mapping-warning = ВНИМАНИЕ: Сервер использует отладочную сборку. Вы рискуете потерять правки.


# duplicate text from engine load/save map commands.
# I CBF making this PR depend on that one.
cmd-mapping-failure-integer = Недопустимое целое число: {$arg}.
cmd-mapping-failure-float = Недопустимое число с плавающей точкой: {$arg}.
cmd-mapping-failure-bool = Недопустимое логическое значение: {$arg}.
cmd-mapping-nullspace = Загрузка карты 0 невозможна.
cmd-hint-mapping-id = [MapID]
cmd-mapping-hint-grid = [сетка]
cmd-hint-mapping-path = [путь]
cmd-mapping-exists = Карта {$mapId} уже существует.
