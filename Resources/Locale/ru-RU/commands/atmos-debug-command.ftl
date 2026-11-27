# SPDX-FileCopyrightText: 2024 PrPleGoo <PrPleGoo@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-atvrange-desc = Задаёт диапазон отладки атмосферы (два числа с плавающей точкой: начало [красный] и конец [синий])
cmd-atvrange-help = Использование: {$command} <start> <end>
cmd-atvrange-error-start = Некорректное число НАЧАЛА
cmd-atvrange-error-end = Некорректное число КОНЦА
cmd-atvrange-error-zero = Масштаб не может быть нулевым, иначе в AtmosDebugOverlay произойдёт деление на ноль.

cmd-atvmode-desc = Устанавливает режим отладки атмосферы. Масштаб сбрасывается автоматически.
cmd-atvmode-help = Использование: {$command} <TotalMoles/GasMoles/Temperature> [<gas ID (for GasMoles)>]
cmd-atvmode-error-invalid = Недопустимый режим
cmd-atvmode-error-target-gas = Для этого режима нужно указать целевой газ.
cmd-atvmode-error-out-of-range = ID газа не удалось разобрать или он находится вне допустимого диапазона.
cmd-atvmode-error-info = Для этого режима дополнительные сведения не нужны.

cmd-atvcbm-desc = Переключает красный/зелёный/синий цвета на оттенки серого
cmd-atvcbm-help = Использование: {$command} <true/false>
cmd-atvcbm-error = Недопустимый флаг
