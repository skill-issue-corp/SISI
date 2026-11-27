# SPDX-FileCopyrightText: 2022 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Tom Leys <tom@crump-leys.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 username <113782077+whateverusername0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

zombie-title = Зомби
zombie-description = На станции появилась нежить! Действуйте сообща с экипажем, чтобы пережить вспышку заражения и обезопасить станцию.

zombieteors-title = Зомбиетеоры
zombieteors-description = На станции появилась нежить посреди катастрофического метеоритного дождя! Действуйте сообща с экипажем и постарайтесь выжить!

zombie-not-enough-ready-players = Недостаточно готовых игроков! Готово {$readyPlayersCount} из {$minimumPlayers} необходимых. Не удалось запустить режим «Зомби».
zombie-no-one-ready = Никто из игроков не готов! Не удалось запустить режим «Зомби».

# SIS-Start
zombie-patientzero-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Нулевой Пациент[/gradient]!
    В вашем теле созревает мутировавший штамм зомби-вируса.
    Ваша цель: [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]захватить станцию[/gradient], обратив весь экипаж в живых мертвецов.

zombie-patientzero-role-greeting-desc =
    • [color={$hl1}]Подготовка:[/color] пока вирус не проявился, вооружитесь, найдите инструменты и изолируйте первую жертву в темном углу.
    • [color={$hl1}]Таймер:[/color] вы обратитесь в зомби после смерти, по истечении времени или нажав кнопку активации в панели действий.
    • [color={$hl1}]Орда:[/color] атакуйте членов экипажа в ближнем бою - каждый павший станет вашим верным соратником!

zombie-patientzero-role-briefing =
    Вы — Нулевой Пациент!
    В вашем теле созревает мутировавший штамм зомби-вируса.
    Ваша цель: захватить станцию, обратив весь экипаж в живых мертвецов.
# SIS-End

zombie-healing = Вы чувствуете, как шевелится ваша плоть
zombie-infection-warning = Вы чувствуете, как зомби-вирус захватывает ваше тело
zombie-infection-underway = Ваша кровь начинает густеть

## goob edit
zombie-start-announcement = На борту станции подтверждена вспышка биологической угрозы 7 уровня. Служба безопасности больше не может вас защитить. Направляйтесь в защищённые зоны и укройтесь там до эвакуации.
### Over
zombie-alone = Вы чувствуете, что остались совсем одни.

zombie-shuttle-call = Мы обнаружили, что нежить захватила станцию. Высылаем эвакуационный шаттл для оставшегося персонала.

zombie-round-end-initial-count = {$initialCount ->
    [one] Был {$initialCount} нулевой пациент:
    [few] Было {$initialCount} нулевых пациента:
    *[many] Было {$initialCount} нулевых пациентов:
}
zombie-round-end-user-was-initial = - [color=plum]{$name}[/color] ([color=gray]{$username}[/color]) в числе нулевых пациентов.

zombie-round-end-amount-none = [color=green]Все зомби уничтожены![/color]
zombie-round-end-amount-low = [color=green]Почти все зомби истреблены.[/color]
zombie-round-end-amount-medium = [color=yellow]{$percent}% экипажа превратились в зомби.[/color]
zombie-round-end-amount-high = [color=crimson]{$percent}% экипажа превратились в зомби.[/color]
zombie-round-end-amount-all = [color=darkred]Весь экипаж превратился в зомби![/color]

zombie-round-end-survivor-count = {$count ->
    [one] Остался только {$count} выживший:
    [few] Осталось только {$count} выживших:
    *[many] Осталось только {$count} выживших:
}
zombie-round-end-user-was-survivor = - [color=White]{$name}[/color] ([color=gray]{$username}[/color]) пережил вспышку заражения.

