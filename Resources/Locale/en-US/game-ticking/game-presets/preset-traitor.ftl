## Traitor

traitor-round-end-codewords = The codewords were: [color=White]{$codewords}[/color]
traitor-round-end-agent-name = traitor

objective-issuer-syndicate = [color=crimson]The Syndicate[/color]
objective-issuer-unknown = [color=white]Unknown[/color]

# Shown at the end of a round of Traitor

traitor-title = Traitor
traitor-description = There are traitors among us...
traitor-not-enough-ready-players = Not enough players readied up for the game! There were {$readyPlayersCount} players readied up out of {$minimumPlayers} needed. Can't start Traitor.
traitor-no-one-ready = No players readied up! Can't start Traitor.

## TraitorDeathMatch
traitor-death-match-title = Traitor Deathmatch
traitor-death-match-description = Everyone's a traitor. Everyone wants each other dead.
traitor-death-match-station-is-too-unsafe-announcement = The station is too unsafe to continue. You have one minute.
traitor-death-match-end-round-description-first-line = The PDAs recovered afterwards...
traitor-death-match-end-round-description-entry = {$originalName}'s PDA, with {$tcBalance} TC

## TraitorRole

# TraitorRole
# SIS-Start
traitor-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]тайный агент[/gradient] корпорации [color={$hl1}]{ $corporation }[/color] на службе [color={$hl1}]Синдиката[/color].
    Ваши цели и кодовые слова доступны в меню персонажа.
    Воспользуйтесь своим аплинком, чтобы приобрести необходимое снаряжение для выполнения контракта.

    {"["}gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]Смерть NanoTrasen![/gradient]

traitor-title-codewords = Кодовые слова
traitor-title-equipment = Снаряжение

traitor-role-codewords =
    Кодовые фразы для связи с союзниками:
    {"["}color={$hl1}]{ $codewords }[/color]
    Используйте эти слова в обычной речи, чтобы [color={$hl1}]найти других агентов[/color] Синдиката на станции. Прислушивайтесь к разговорам вокруг и держите свои фразы в секрете!

traitor-role-uplink-code =
    Для доступа к аплинку установите рингтон КПК на код: [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]{ $code }[/gradient]
    {"["}color={$hl1}]Внимание:[/color] обязательно смените рингтон или заблокируйте КПК после покупок, иначе любой член экипажа сможет обнаружить ваш аплинк!

traitor-role-uplink-implant =
    В ваше тело встроен [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]имплант-аплинк[/gradient]. Активируйте его из панели действий ([color={$hl1}]хотбара[/color]).
    Магазин скрыт внутри вас и недоступен охране, пока имплант не извлекут хирургическим путём.
# SIS-End

# don't need all the flavour text for character menu
traitor-role-codewords-short =
    The codewords are:
    {$codewords}.
traitor-role-uplink-code-short = Your uplink code is {$code}. Set it as your PDA ringtone to access uplink.
traitor-role-uplink-implant-short = Your uplink was implanted. Access it from your hotbar.

traitor-role-moreinfo =
    Find more information about your role in the character menu.

traitor-role-nouplink =
    You do not have a syndicate uplink. Make it count.

traitor-role-allegiances =
    Your allegiances:

traitor-role-notes =
    Notes from your employer:
