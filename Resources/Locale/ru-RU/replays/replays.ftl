# SPDX-FileCopyrightText: 2024 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Simon <63975668+Simyon264@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Loading Screen

replay-loading = Загрузка ({$cur}/{$total})
replay-loading-reading = Чтение Файлов
replay-loading-processing = Обработка Файлов
replay-loading-spawning = Создание Сущностей
replay-loading-initializing = Инициализация Сущностей
replay-loading-starting= Запуск Сущностей
replay-loading-failed = Не удалось загрузить повтор. Ошибка:
                        {$reason}
replay-loading-retry = Попробовать загрузить, игнорируя больше исключений - ВОЗМОЖНЫ ОШИБКИ!
replay-loading-cancel = Отмена

# Main Menu
replay-menu-subtext = Просмотр Повторов
replay-menu-load = Загрузить Выбранный Повтор
replay-menu-select = Выберите Повтор
replay-menu-open = Открыть Папку Повторов
replay-menu-none = Повторов не найдено.

# Main Menu Info Box
replay-info-title = Сведения о Повторе
replay-info-none-selected = Повтор не выбран
replay-info-invalid = [color=red]Выбран недопустимый повтор[/color]
replay-info-info = {"["}color=gray]Выбрано:[/color]  {$name} ({$file})
                   {"["}color=gray]Время:[/color]   {$time}
                   {"["}color=gray]ID Раунда:[/color]   {$roundId}
                   {"["}color=gray]Длительность:[/color]   {$duration}
                   {"["}color=gray]ForkId:[/color]   {$forkId}
                   {"["}color=gray]Версия:[/color]   {$version}
                   {"["}color=gray]Движок:[/color]   {$engVersion}
                   {"["}color=gray]Хеш Типов:[/color]   {$hash}
                   {"["}color=gray]Хеш Компонентов:[/color]   {$compHash}

# Replay selection window
replay-menu-select-title = Выбрать Повтор

# Replay related verbs
replay-verb-spectate = Наблюдать

# command
cmd-replay-spectate-help = replay_spectate [сущность (необязательная)]
cmd-replay-spectate-desc = Присоединяет локального игрока к сущности по uid или отсоединяет его.
cmd-replay-spectate-hint = Необязательный EntityUid
