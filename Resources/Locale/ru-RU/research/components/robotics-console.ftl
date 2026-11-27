# SPDX-FileCopyrightText: 2024 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

robotics-console-window-title = Консоль Робототехники
robotics-console-no-cyborgs = Киборги Отсутствуют!

robotics-console-select-cyborg = Выберите киборга выше.
robotics-console-model = [color=gray]Модель:[/color] {$name}
# name is not formatted to prevent players trolling
robotics-console-designation = [color=gray]Обозначение:[/color]
robotics-console-battery = [color=gray]Заряд батареи:[/color] [color={$color}]{$charge}[/color]%
robotics-console-hp = [color=gray]Целостность:[/color] [color={$color}]{$hp}[/color]%
robotics-console-modules = [color=gray]Установлено модулей:[/color] {$count}
robotics-console-brain = [color=gray]Мозг установлен:[/color] [color={$brain ->
    [true] green]Да
    *[false] red]Нет
}[/color]

robotics-console-locked-message = Управление заблокировано. Приложите ID-карту.
robotics-console-disable = Отключить
robotics-console-destroy = Уничтожить

robotics-console-cyborg-destroying = Запущен дистанционный подрыв {$name}!
