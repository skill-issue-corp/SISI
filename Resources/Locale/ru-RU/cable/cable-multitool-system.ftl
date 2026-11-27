# SPDX-FileCopyrightText: 2021 20kdc <asdd2808@gmail.com>
# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cable-multitool-system-internal-error-no-power-node = Мультитул сообщает: «ВНУТРЕННЯЯ ОШИБКА: ЭТО НЕ СИЛОВОЙ КАБЕЛЬ».
cable-multitool-system-internal-error-missing-component = Мультитул сообщает: «ВНУТРЕННЯЯ ОШИБКА: НЕИСПРАВНОСТЬ КАБЕЛЯ».
cable-multitool-system-verb-name = Электропитание
cable-multitool-system-verb-tooltip = Используйте мультитул для просмотра показателей электросети.

cable-multitool-system-statistics = Мультитул показывает список показателей:
                                    Текущая Подача: { POWERWATTS($supplyc) }
                                    От Батарей: { POWERWATTS($supplyb) }
                                    Теоретическая Подача: { POWERWATTS($supplym) }
                                    Идеальное Потребление: { POWERWATTS($consumption) }
                                    Входной Накопитель: { POWERJOULES($storagec) } / { POWERJOULES($storagem) } ({ TOSTRING($storager, "P1") })
                                    Выходной Накопитель: { POWERJOULES($storageoc) } / { POWERJOULES($storageom) } ({ TOSTRING($storageor, "P1") })
