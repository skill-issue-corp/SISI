## Survivor

roles-antag-survivor-name = Survivor
# It's a Halo reference
roles-antag-survivor-objective = Current Objective: Survive

survivor-role-greeting =
    You are a Survivor. Above all you need to make it back to Central Command alive.
    Collect as much firepower as needed to guarantee your survival.
    Trust no one.

survivor-round-end-dead-count =
{
    $deadCount ->
        [one] [color=red]{$deadCount}[/color] survivor died.
        *[other] [color=red]{$deadCount}[/color] survivors died.
}

survivor-round-end-alive-count =
{
    $aliveCount ->
        [one] [color=yellow]{$aliveCount}[/color] survivor was marooned on the station.
        *[other] [color=yellow]{$aliveCount}[/color] survivors were marooned on the station.
}

survivor-round-end-alive-on-shuttle-count =
{
    $aliveCount ->
        [one] [color=green]{$aliveCount}[/color] survivor made it out alive.
        *[other] [color=green]{$aliveCount}[/color] survivors made it out alive.
}

## Wizard

objective-issuer-swf = [color=turquoise]The Space Wizards Federation[/color]

wizard-title = Wizard
wizard-description = There's a Wizard on the station! You never know what they might do.

roles-antag-wizard-name = Wizard
roles-antag-wizard-objective = Teach them a lesson they'll never forget.

# SIS-Start
## --- Wizard Greeting ---
wizard-role-greeting =
    {"["}gradient angle="45" color1="{$hl1}" color2="{$hl2}" speed="1"]Время магии, ублюдки![/gradient]
    Отношения между [color={$hl1}]Федерацией Космических Магов[/color] и [color={$hl1}]NanoTrasen[/color] накалились до предела.

    Совет поручил именно вам нанести визит на станцию [color={$hl1}]{ $station }[/color], дабы напомнить этим бюрократам, почему с чародеями шутки плохи.

    {"["}gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]Сейте чистый астральный хаос и разрушение.[/gradient]

wizard-role-greeting-desc =
    • [color={$hl1}]Гримуар заклинаний:[/color] волшебная книга в ваших руках. Изучайте разрушительные чары, метайте молнии и искривляйте пространство.
    • [color={$hl1}]Свобода хаоса:[/color] обратите станцию в пепелище или устройте безумный цирк — ваш арсенал ограничен лишь запасом маны и фантазией.
    • [color={$hl1}]Главный наказ:[/color] Совет ожидает вашего триумфального возвращения. Разнесите этот сектор, но [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]вернитесь назад живым[/gradient]!
# SIS-End
wizard-round-end-name = wizard

## TODO: Wizard Apprentice (Coming sometime post-wizard release)
