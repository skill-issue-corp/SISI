## Survivor

roles-antag-survivor-name = Выживший
# It's a Halo reference
roles-antag-survivor-objective = Текущая Цель: Выжить

survivor-role-greeting =
    Вы Выживший. Главное - добраться до Центрального Командования живым.
    Соберите столько оружия, сколько нужно, чтобы наверняка выжить.
    Никому не доверяйте.

survivor-round-end-dead-count =
{
    $deadCount ->
        [one] Погиб [color=red]{$deadCount}[/color] выживший.
        [few] Погибло [color=red]{$deadCount}[/color] выживших.
        *[many] Погибло [color=red]{$deadCount}[/color] выживших.
}

survivor-round-end-alive-count =
{
    $aliveCount ->
        [one] [color=yellow]{$aliveCount}[/color] выживший остался на станции.
        [few] [color=yellow]{$aliveCount}[/color] выживших осталось на станции.
        *[many] [color=yellow]{$aliveCount}[/color] выживших осталось на станции.
}

survivor-round-end-alive-on-shuttle-count =
{
    $aliveCount ->
        [one] [color=green]{$aliveCount}[/color] выживший выбрался живым.
        [few] [color=green]{$aliveCount}[/color] выживших выбрались живыми.
        *[many] [color=green]{$aliveCount}[/color] выживших выбрались живыми.
}

## Wizard

objective-issuer-swf = [color=turquoise]Космическая Федерация Волшебников[/color]

wizard-title = Волшебник
wizard-description = На станции появился Волшебник! Никогда не знаешь, что он выкинет.

roles-antag-wizard-name = Волшебник
roles-antag-wizard-objective = Преподайте им урок, который они никогда не забудут.

# SIS-Start
wizard-role-greeting =
    {"["}gradient angle="45" color1="{$hl1}" color2="{$hl2}" speed="1"]Время магии, ублюдки![/gradient]
    Отношения между [color={$hl1}]Федерацией Космических Магов[/color] и [color={$hl1}]NanoTrasen[/color] накалились до предела.

    Совет поручил именно вам нанести визит на станцию [color={$hl1}]{$station}[/color], дабы напомнить этим бюрократам, почему с чародеями шутки плохи.

    {"["}gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]Сейте чистый астральный хаос и разрушение.[/gradient]

wizard-role-greeting-desc =
    • [color={$hl1}]Гримуар заклинаний:[/color] волшебная книга в ваших руках. Изучайте разрушительные чары, метайте молнии и искривляйте пространство.
    • [color={$hl1}]Свобода хаоса:[/color] обратите станцию в пепелище или устройте безумный цирк — ваш арсенал ограничен лишь запасом маны и фантазией.
    • [color={$hl1}]Главный наказ:[/color] Совет ожидает вашего триумфального возвращения. Разнесите этот сектор, но [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]вернитесь назад живым[/gradient]!
# SIS-End

wizard-round-end-name = волшебник

## TODO: Wizard Apprentice (Coming sometime post-wizard release)
