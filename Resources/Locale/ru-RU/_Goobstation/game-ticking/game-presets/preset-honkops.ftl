# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Piras314 <p1r4s@proton.me>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

honkops-title = Оперативники Хонклеар
honkops-description = Оперативники хонклеар нацелились на станцию. Защитите ядерный диск, чтобы они не смогли активировать и взорвать ядерную бомбу!

# SIS-Start
honkops-role-greeting =
    Командование [gradient color1="{$hl1}" color2="{$hl2}"]Синдиката[/gradient] доверило красную кнопку тем, кто понимает истинную природу хаоса.
    Вы - [gradient color1="{$hl1}" color2="{$hl2}"]Хонк-Оперативник[/gradient].
    Ваша цель: превратить [gradient color1="{$hl1}" color2="{$hl2}"]{ $station }[/gradient] в пыль с помощью нашей [gradient color1="{$hl1}" color2="{$hl2}"]боеГОЛОВКИ)))[/gradient].

    Операция «[gradient color1="{$hl1}" color2="{$hl2}"]{ $name }[/gradient]» началась. Заправьте клоун-кар, проверьте маски и устройте этим занудам грандиозный фильм.
honkops-role-greeting-desc =
    План предельно простой: доставить [gradient color1="{$hl1}" color2="{$hl2}"]заряд[/gradient] в сердце станции, запустить таймер и защищать его во имя Хонкоматери до победной [gradient color1="{$hl1}" color2="{$hl2}" ]детонации[/gradient].

    {"["}rainbow speed="0.1"]Смерть NanoTrasen! Да начнётся великий ХОНК![/rainbow]
# SIS-End

honkops-opsmajor = [color=crimson]Крупная победа Хонкиката![/color]
honkops-opsminor = [color=crimson]Малая победа Хонкиката![/color]
honkops-neutral = [color=yellow]Ничейный исход![/color]
honkops-crewminor = [color=green]Малая победа экипажа![/color]
honkops-crewmajor = [color=green]Крупная победа экипажа![/color]

honkops-cond-nukeexplodedoncorrectstation = Оперативникам хонклеар удалось взорвать станцию.
honkops-cond-nukeexplodedonnukieoutpost = Хонклеарный взрыв уничтожил аванпост оперативников хонклеар.
honkops-cond-nukeexplodedonincorrectlocation = Хонклеарная бомба взорвалась за пределами станции.
honkops-cond-nukeactiveinstation = Хонклеарная бомба осталась на станции в активированном состоянии.
honkops-cond-nukeactiveatcentcom = Хонклеарную бомбу доставили в Центральное Командование!
honkops-cond-nukediskoncentcom = Экипаж эвакуировался с диском хонклеарной аутентификации.
honkops-cond-nukedisknotoncentcom = Экипаж оставил диск хонклеарной аутентификации.
honkops-cond-nukiesabandoned = Оперативников хонклеар бросили на произвол судьбы.
honkops-cond-allnukiesdead = Все оперативники хонклеар погибли.
honkops-cond-somenukiesalive = Некоторые оперативники хонклеар погибли.
honkops-cond-allnukiesalive = Ни один оперативник хонклеар не погиб.

honkops-list-start = Оперативниками хонклеар были:
honkops-list-name = - [color=White]{$name}[/color]
honkops-list-name-user = - [color=White]{$name}[/color] ([color=gray]{$user}[/color])
honkops-not-enough-ready-players = Недостаточно готовых игроков! Готовых игроков: {$readyPlayersCount}, требуется {$minimumPlayers}. Не удалось запустить Хонкопс.
honkops-no-one-ready = Нет готовых игроков! Не удалось запустить Хонкопс.

honkops-role-commander = Хонк-Командир
honkops-role-agent = Хонк-Агент
honkops-role-operator = Хонк-Оператор

loadout-group-honkops-mask = Маска Хонкопс
