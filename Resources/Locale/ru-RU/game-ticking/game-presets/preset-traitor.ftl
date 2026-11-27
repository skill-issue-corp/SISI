## Traitor

traitor-round-end-codewords = Кодовые слова: [color=White]{$codewords}[/color]
traitor-round-end-agent-name = предатель

objective-issuer-syndicate = [color=crimson]Синдикат[/color]
objective-issuer-unknown = [color=white]Неизвестно[/color]

# Shown at the end of a round of Traitor

traitor-title = Предатель
traitor-description = Среди нас есть предатели...
traitor-not-enough-ready-players = Недостаточно готовых игроков! Готово {$readyPlayersCount} из {$minimumPlayers} необходимых. Не удалось запустить режим «Предатель».
traitor-no-one-ready = Никто из игроков не готов! Не удалось запустить режим «Предатель».

## TraitorDeathMatch
traitor-death-match-title = Дезматч Предателей
traitor-death-match-description = Все предатели. Каждый хочет убить остальных.
traitor-death-match-station-is-too-unsafe-announcement = На станции слишком опасно продолжать. У вас одна минута.
traitor-death-match-end-round-description-first-line = КПК, найденные после бойни...
traitor-death-match-end-round-description-entry = КПК владельца {$originalName}, баланс {$tcBalance} ТК

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
    Кодовые слова:
    {$codewords}.
traitor-role-uplink-code-short = Ваш код аплинка - {$code}. Установите его как мелодию вызова КПК, чтобы открыть аплинк.
traitor-role-uplink-implant-short = Вам вживили аплинк. Откройте его из меню действий.
