# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

logic-gate-examine = Текущий логический элемент: {$gate}.

logic-gate-cycle = Выбран логический элемент {$gate}

power-sensor-examine = Сейчас проверяется {$output ->
    [true] выходной
    *[false] входной
} накопитель сети.
power-sensor-voltage-examine = Устройство проверяет электросеть {$voltage}.

power-sensor-switch = Устройство переключилось на проверку {$output ->
    [true] выходного
    *[false] входного
} накопителя сети.
power-sensor-voltage-switch = Сеть переключена на {$voltage}!
