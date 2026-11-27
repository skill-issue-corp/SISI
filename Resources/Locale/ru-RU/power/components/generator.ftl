# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

generator-clogged = {CAPITALIZE($generator)} резко выключается!

portable-generator-verb-start = Запустить генератор
portable-generator-verb-start-msg-unreliable = Запустить генератор. Может потребоваться несколько попыток.
portable-generator-verb-start-msg-reliable = Запустить генератор.
portable-generator-verb-start-msg-unanchored = Сначала закрепите генератор!
portable-generator-verb-stop = Остановить генератор
portable-generator-start-fail = Вы дёргаете шнур, но генератор не запускается.
portable-generator-start-success = Вы дёргаете шнур, и генератор с гулом запускается.

portable-generator-ui-title = Переносной Генератор
portable-generator-ui-status-stopped = Остановлен:
portable-generator-ui-status-starting = Запускается:
portable-generator-ui-status-running = Работает:
portable-generator-ui-start = Запустить
portable-generator-ui-stop = Остановить
portable-generator-ui-target-power-label = Целевая Мощность (кВт):
portable-generator-ui-efficiency-label = КПД:
portable-generator-ui-fuel-use-label = Расход топлива:
portable-generator-ui-fuel-left-label = Остаток топлива:
portable-generator-ui-clogged = В топливном баке обнаружены загрязнения!
portable-generator-ui-eject = Извлечь
portable-generator-ui-eta = (~{ $minutes } мин.)
portable-generator-ui-unanchored = Откреплено
portable-generator-ui-current-output = Текущая мощность: {$voltage}
portable-generator-ui-network-stats = Сеть:
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
portable-generator-ui-network-stats-not-connected = Не подключён

power-switchable-generator-examine = Выходное напряжение: {$voltage}.
power-switchable-generator-switched = Выход переключён на {$voltage}!

power-switchable-voltage = { $voltage ->
    [HV] [color=orange]ВН[/color]
    [MV] [color=yellow]СН[/color]
    *[LV] [color=green]НН[/color]
}
power-switchable-switch-voltage = Переключить на {$voltage}

fuel-generator-verb-disable-on = Сначала выключите генератор!
