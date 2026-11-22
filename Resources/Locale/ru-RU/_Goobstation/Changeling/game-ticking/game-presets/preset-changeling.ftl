# SPDX-License-Identifier: AGPL-3.0-or-later

changeling-round-end-agent-name = генокрад

objective-issuer-hivemind = [color=orange]Улей[/color]
objective-issuer-tiger = [color=crimson]Tiger Cooperative[/color]

roundend-prepend-changeling-absorbed-named = [color=white]{ $name }[/color] поглотил всего [color=red]{ $number }[/color] организмов.
roundend-prepend-changeling-stolen-named = [color=white]{ $name }[/color] извлёк всего [color=orange]{ $number }[/color] ДНК.
roundend-prepend-changeling-absorbed = Кто-то поглотил всего [color=red]{ $number }[/color] организмов.
roundend-prepend-changeling-stolen = Кто-то извлек всего [color=orange]{ $number }[/color] ДНК.

changeling-gamemode-title = Генокрады
changeling-gamemode-description = Улей Генокрадов захватил станцию, и готов забрать всё что только пожелает — ваше снаряжение, ваши лица, ваши жизни!

# SIS-Start
changeling-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Генокрад[/gradient]!
    Вы поглотили исходную личность [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]{$name}[/gradient] и заняли её место, внедрившись в экипаж станции.
    Ваша цель: [color={$hl1}]поглощать органику[/color], собирать образцы ДНК и эволюционировать любой ценой.

changeling-role-greeting-desc =
    • [color={$hl1}]Сбор ДНК:[/color] используйте жала и поглощайте тела оглушенных жертв, чтобы получать очки эволюции и новые маскировки.
    • [color={$hl1}]Эволюция:[/color] покупайте мутации в меню эволюции: боевые клинки, хитиновую броню, регенерацию и химические железы.
    • [color={$hl1}]Скрытность:[/color] вы можете в любой момент изменить свой облик и голос на любой из поглощенных образцов. Не дайте раскрыть себя!
# SIS-End
changeling-role-greeting-trauma =
    You are a changeling who has absorbed and taken the form of {$name}!
    Your objectives are listed in the character menu.
    Absorb, shapeshift and evolve to complete them!

changeling-role-greeting-short = Вы — генокрад, принявший облик { $name }.
