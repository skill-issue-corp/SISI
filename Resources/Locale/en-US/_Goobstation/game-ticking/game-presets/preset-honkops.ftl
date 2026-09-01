# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Piras314 <p1r4s@proton.me>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

honkops-title = Honklear Operatives
honkops-description = Honklear operatives have targeted the station. Try to keep them from arming and detonating the nuke by protecting the nuke disk!

# SIS-Start
## --- Honkops Greeting ---
honkops-role-greeting =
    Командование [gradient color1="{$hl1}" color2="{$hl2}"]Синдиката[/gradient] доверило красную кнопку тем, кто понимает истинную природу хаоса.
    Вы - [gradient color1="{$hl1}" color2="{$hl2}"]Хонк-Оперативник[/gradient].
    Ваша цель: превратить [gradient color1="{$hl1}" color2="{$hl2}"]{ $station }[/gradient] в пыль с помощью нашей [gradient color1="{$hl1}" color2="{$hl2}"]боеГОЛОВКИ)))[/gradient].

    Операция «[gradient color1="{$hl1}" color2="{$hl2}"]{ $name }[/gradient]» началась. Заправьте клоун-кар, проверьте маски и устройте этим занудам грандиозный фильм.
honkops-role-greeting-desc =
    План предельно простой: доставить [gradient color1="{$hl1}" color2="{$hl2}"]заряд[/gradient] в сердце станции, запустить таймер и защищать его во имя Хонкоматери до победной [gradient color1="{$hl1}" color2="{$hl2}" ]детонации[/gradient].

    {"["}rainbow speed="0.1"]Смерть NanoTrasen! Да начнётся великий ХОНК![/rainbow]
# SIS-End

honkops-opsmajor = [color=crimson]Honkicate major victory![/color]
honkops-opsminor = [color=crimson]Honkicate minor victory![/color]
honkops-neutral = [color=yellow]Neutral outcome![/color]
honkops-crewminor = [color=green]Crew minor victory![/color]
honkops-crewmajor = [color=green]Crew major victory![/color]

honkops-cond-nukeexplodedoncorrectstation = The honklear operatives managed to blow up the station.
honkops-cond-nukeexplodedonnukieoutpost = The honklear operative outpost was destroyed by a honklear blast.
honkops-cond-nukeexplodedonincorrectlocation = The honklear bomb was detonated off-station.
honkops-cond-nukeactiveinstation = The honklear bomb was left armed on-station.
honkops-cond-nukeactiveatcentcom = The honklear bomb was delivered to Central Command!
honkops-cond-nukediskoncentcom = The crew escaped with the honklear authentication disk.
honkops-cond-nukedisknotoncentcom = The crew left the honklear authentication disk behind.
honkops-cond-nukiesabandoned = The honklear operatives were abandoned.
honkops-cond-allnukiesdead = All honklear operatives have died.
honkops-cond-somenukiesalive = Some honklear operatives died.
honkops-cond-allnukiesalive = No honklear operatives died.

honkops-list-start = The honklear operatives were:
honkops-list-name = - [color=White]{$name}[/color]
honkops-list-name-user = - [color=White]{$name}[/color] ([color=gray]{$user}[/color])
honkops-not-enough-ready-players = Not enough players readied up for the game! There were {$readyPlayersCount} players readied up out of {$minimumPlayers} needed. Can't start Honkops.
honkops-no-one-ready = No players readied up! Can't start Honkops.

honkops-role-commander = Honk Commander
honkops-role-agent = Honk Agent
honkops-role-operator = Honk Operator

loadout-group-honkops-mask = Honkops Mask
