# SPDX-FileCopyrightText: 2023 0x6273 <0x40@keemail.me>
# SPDX-FileCopyrightText: 2023 James Simonson <jamessimo89@gmail.com>
# SPDX-FileCopyrightText: 2023 brainfood1183 <113240905+brainfood1183@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Ed <96445749+TheShuEd@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

anomaly-component-contact-damage = Аномалия обжигает вас до мяса!

anomaly-vessel-component-anomaly-assigned = Аномалия привязана к сосуду.
anomaly-vessel-component-not-assigned = Сосуд не привязан ни к одной аномалии. Попробуйте использовать на нём сканер.
anomaly-vessel-component-assigned = Сосуд привязан к аномалии.

anomaly-particles-delta = Дельта-частицы
anomaly-particles-epsilon = Эпсилон-частицы
anomaly-particles-zeta = Зета-частицы
anomaly-particles-omega = Омега-частицы
anomaly-particles-sigma = Сигма-частицы

anomaly-scanner-component-scan-complete = Сканирование завершено!

anomaly-scanner-ui-title = сканер аномалий
anomaly-scanner-no-anomaly = Нет данных о просканированной аномалии.
anomaly-scanner-severity-percentage = Текущая тяжесть: [color=gray]{$percent}[/color]
anomaly-scanner-severity-percentage-unknown = Текущая тяжесть: [color=red]ОШИБКА[/color]
anomaly-scanner-stability-low = Текущее состояние аномалии: [color=gold]Затухает[/color]
anomaly-scanner-stability-medium = Текущее состояние аномалии: [color=forestgreen]Стабильна[/color]
anomaly-scanner-stability-high = Текущее состояние аномалии: [color=crimson]Растёт[/color]
anomaly-scanner-stability-unknown = Текущее состояние аномалии: [color=red]ОШИБКА[/color]
anomaly-scanner-point-output = Выработка очков: [color=gray]{$point}[/color]
anomaly-scanner-point-output-unknown = Выработка очков: [color=red]ОШИБКА[/color]
anomaly-scanner-particle-readout = Анализ Реакций на Частицы:
anomaly-scanner-particle-danger = - [color=crimson]Опасный тип:[/color] {$type}
anomaly-scanner-particle-unstable = - [color=plum]Дестабилизирующий тип:[/color] {$type}
anomaly-scanner-particle-containment = - [color=goldenrod]Сдерживающий тип:[/color] {$type}
anomaly-scanner-particle-transformation = - [color=#6b75fa]Преобразующий тип:[/color] {$type}
anomaly-scanner-particle-danger-unknown = - [color=crimson]Опасный тип:[/color] [color=red]ОШИБКА[/color]
anomaly-scanner-particle-unstable-unknown = - [color=plum]Дестабилизирующий тип:[/color] [color=red]ОШИБКА[/color]
anomaly-scanner-particle-containment-unknown = - [color=goldenrod]Сдерживающий тип:[/color] [color=red]ОШИБКА[/color]
anomaly-scanner-particle-transformation-unknown = - [color=#6b75fa]Преобразующий тип:[/color] [color=red]ОШИБКА[/color]
anomaly-scanner-pulse-timer = До следующего импульса: [color=gray]{$time}[/color]
anomaly-scanner-doafter-examine = { CAPITALIZE(SUBJECT($user)) } {CONJUGATE-BE($user)}[color=plum]сканирует аномалию[/color].

anomaly-gorilla-core-slot-name = Ядро аномалии
anomaly-gorilla-charge-none = Внутри нет [bold]ядра аномалии[/bold].
anomaly-gorilla-charge-limit = Осталось [color={$count ->
    [3]green
    [2]yellow
    [1]orange
    [0]red
    *[other]purple
}]{$count} { $count ->
    [one] заряд
    [few] заряда
   *[other] зарядов
}[/color].
anomaly-gorilla-charge-infinite = Заряды [color=gold]бесконечны[/color]. [italic]Пока что...[/italic]

anomaly-sync-connected = Аномалия успешно подключена
anomaly-sync-disconnected = Связь с аномалией потеряна!
anomaly-sync-no-anomaly = Поблизости нет аномалии.
anomaly-sync-examine-connected = Устройство [color=darkgreen]связано[/color] с аномалией.
anomaly-sync-examine-not-connected = Устройство [color=darkred]не связано[/color] с аномалией.
anomaly-sync-connect-verb-text = Подключить аномалию
anomaly-sync-connect-verb-message = Подключить ближайшую аномалию к {$machine}.
anomaly-sync-disconnect-verb-text = Отключить аномалию
anomaly-sync-disconnect-verb-message = Отключить связанную аномалию от {$machine}.

anomaly-generator-ui-title = Генератор Аномалий
anomaly-generator-fuel-display = Топливо:
anomaly-generator-cooldown = Перезарядка: [color=gray]{$time}[/color]
anomaly-generator-no-cooldown = Перезарядка: [color=gray]Завершена[/color]
anomaly-generator-yes-fire = Состояние: [color=forestgreen]Готов[/color]
anomaly-generator-no-fire = Состояние: [color=crimson]Не готов[/color]
anomaly-generator-generate = Создать Аномалию
anomaly-generator-charges = {$charges} { $charges ->
    [one] заряд
    [few] заряда
   *[other] зарядов
}
anomaly-generator-announcement = Создана аномалия!

anomaly-command-pulse = Вызывает импульс у выбранной аномалии
anomaly-command-supercritical = Доводит выбранную аномалию до сверхкритического состояния

# Flavor text on the footer
anomaly-generator-flavor-left = Аномалия может возникнуть внутри оператора.
anomaly-generator-flavor-right = v1.1

anomaly-behavior-unknown = [color=red]ОШИБКА. Не удаётся считать.[/color]

anomaly-behavior-title = Анализ Отклонений в Поведении:
anomaly-behavior-point = [color=gold]Аномалия вырабатывает {$mod}% очков[/color]

anomaly-behavior-safe = [color=forestgreen]Аномалия чрезвычайно стабильна. Импульсы крайне редки.[/color]
anomaly-behavior-slow = [color=forestgreen]Импульсы происходят гораздо реже.[/color]
anomaly-behavior-light = [color=forestgreen]Сила импульсов значительно снижена.[/color]
anomaly-behavior-balanced = Отклонений в поведении не обнаружено.
anomaly-behavior-delayed-force = Импульсы происходят гораздо реже, но стали сильнее.
anomaly-behavior-rapid = Импульсы происходят гораздо чаще, но стали слабее.
anomaly-behavior-reflect = Обнаружено защитное покрытие.
anomaly-behavior-nonsensivity = Обнаружена слабая реакция на частицы.
anomaly-behavior-sensivity = Обнаружена усиленная реакция на частицы.
anomaly-behavior-invisibility = Обнаружено искажение световых волн.
anomaly-behavior-secret = Обнаружены помехи. Часть данных недоступна
anomaly-behavior-inconstancy = [color=crimson]Обнаружена изменчивость. Типы частиц могут меняться со временем.[/color]
anomaly-behavior-fast = [color=crimson]Частота импульсов сильно повышена.[/color]
anomaly-behavior-strenght = [color=crimson]Сила импульсов значительно повышена.[/color]
anomaly-behavior-moving = [color=crimson]Обнаружена нестабильность координат.[/color]
anomaly-secret-admin = [color=red](ОШИБКА)[/color]
