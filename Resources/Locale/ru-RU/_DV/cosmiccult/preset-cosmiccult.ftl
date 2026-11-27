## COSMIC CULT ROUND, ANTAG & GAMEMODE TEXT

cosmiccult-announcement-sender = ???

cosmiccult-title = Космический Культ
cosmiccult-description = Среди экипажа скрываются культисты.

roles-antag-cosmiccult-name = Космический Культист
roles-antag-cosmiccult-description = Приблизьте конец всего сущего хитростью и диверсиями, промывая мозги тем, кто вам противостоит.

cosmiccult-gamemode-title = Космический Культ
cosmiccult-gamemode-description = Сканеры регистрируют аномальный рост Ноöсферного давления. Дополнительных данных нет.

cosmiccult-finale-autocall-briefing = Монумент активируется {$minutesandseconds}! Соберитесь и приготовьтесь к концу.
cosmiccult-finale-ready = Из Монумента вырывается ужасающий свет!
cosmiccult-finale-nobodyes = Подведите гуманоидов в критическом состоянии, чтобы ускорить призыв.
cosmiccult-finale-speedup = Призыв ускоряется! Энергия разливается вокруг...

cosmiccult-finale-degen = Вы чувствуете, как распадаетесь!
cosmiccult-finale-location = Сканеры обнаружили мощнейший Ноöсферный выброс {$location}! Немедленно возьмите под охрану ядерное взрывное устройство станции!
cosmiccult-finale-cancel-begin = Сила вашей воли начинает рушить ритуал...
cosmiccult-finale-beckon-begin = Шёпот в глубине вашего сознания нарастает...

cosmiccult-monument-approval-lowlevel = Вы пытаетесь сосредоточиться, но пока недостаточно сильны.
cosmiccult-monument-approval-added = Вы сосредотачиваете силу воли, чтобы призвать Монумент...
cosmiccult-monument-approval-removed = Вы больше не сосредоточены на этом месте.
cosmiccult-monument-approval-count = [color=#4cabb3]На этом месте сосредоточено культистов: {$count}.[/color]
cosmiccult-monument-approval-needed = [color=#4cabb3]Для призыва Монумента нужно, чтобы сосредоточилось ещё столько культистов: {$count}.[/color]
cosmiccult-monument-approval-examine-present = [color=#4cabb3]Вы уже сосредоточены на этом месте.[/color]
cosmiccult-monument-mark-removed = Ваша предыдущая отметка снята.

## ROUNDEND TEXT

cosmiccult-roundend-cultist-count = {$initialCount ->
    [one] В культе состоял {$initialCount} [color=#4cabb3]Космический Культист[/color].
    [few] В культе состояло {$initialCount} [color=#4cabb3]Космических Культиста[/color].
    *[many] В культе состояло {$initialCount} [color=#4cabb3]Космических Культистов[/color].
}
cosmiccult-roundend-entropy-count = Культ высосал {$count} Энтропии.
cosmiccult-roundend-list-start = Культистами были:
cosmiccult-roundend-list-name-user = - [color=#4cabb3]{$name}[/color] ([color=gray]{$user}[/color])

cosmiccult-roundend-cultwin = [color=#4cabb3]Полная победа Космического Культа![/color]
cosmiccult-roundend-cultminor = [color=#4cabb3]Частичная победа Космического Культа![/color]
cosmiccult-roundend-neutral = [color=yellow]Нейтральный исход![/color]
cosmiccult-roundend-crewminor = [color=green]Частичная победа экипажа![/color]
cosmiccult-roundend-crewwin = [color=green]Полная победа экипажа![/color]

cosmiccult-summary-cultwin = Космические культисты приблизили конец всего сущего!
cosmiccult-summary-crewwin = Экипаж пережил нападки Космического Культа!

cosmiccult-elimination-shuttle-call = По данным наших дальних сканеров, Ноöсферная аномалия затихла. Благодарим вас за благоразумие. На станцию автоматически вызван эвакуационный шаттл. Доставьте весь заражённый персонал в ЦК для дальнейшего разбирательства. ДО ПРИБЫТИЯ: {$time} {$units}.
cosmiccult-elimination-announcement = По данным наших дальних сканеров, Ноöсферная аномалия затихла. Благодарим вас за благоразумие. Эвакуационный шаттл уже в пути. Доставьте весь заражённый персонал в ЦК для дальнейшего разбирательства.


## BRIEFINGS

# SIS-Start
cosmiccult-role-greeting =
    Пока вы готовитесь к очередной смене, ваш разум затапливает невыразимое знание.
    Реальность распадается на части. Приближается великий [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]Последний Занавес[/gradient]...

    Вы призваны завершить бессмысленный цикл и впустить [gradient color1="{$hl1}" color2="{$hl2}" speed="1.5"]Неизвестное[/gradient]!

cosmiccult-role-greeting-desc =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Космический Культист[/gradient]. Приблизьте конец всего сущего через ритуалы угасания.

    • [color={$hl1}]Сбор Энтропии:[/color] [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]выкачивайте энтропию[/gradient] из экипажа и конструкций, накапливая силы для открытия новых Влияний.
    • [color={$hl1}]Зловещие Разломы:[/color] находите разрывы в пространстве и поглощайте их мощь, насыщая тело [color={$hl1}]ноосферной энергией[/color].
    • [color={$hl1}]Монумент Финала:[/color] объедините силу воли с другими культистами, [gradient color1="{$hl1}" color2="{$hl2}" speed="1.5"]призовите Монумент[/gradient] и сотрите этот мир из реальности!

cosmiccult-conversion-role-greeting =
    Зловещий шёпот рассекает ваш рассудок. Иллюзии смертной жизни рушатся, обнажая истинную природу бытия — неизбежный [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]Конец Всего Сущего[/gradient].

cosmiccult-conversion-role-greeting-desc =
    Вы стали [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Космическим Служителем[/gradient]!

    • [color={$hl1}]Служение культу:[/color] защищайте старших братьев, помогайте проводить ритуалы и охраняйте шпили энтропии.
    • [color={$hl1}]Скрытность:[/color] координируйте диверсии в [color={$hl1}]Космическом Радио[/color] и держите верность культу в тайне от СБ.
# SIS-End

cosmiccult-role-conversion-fluff =
    С завершением ритуала ваш разум внезапно затапливает невыразимое знание!
    Несравненное откровение. Конец вечным, сизифовым страданиям.
    Тихий поклон на прощание.

    Вам остаётся лишь приблизить его.

cosmiccult-role-conversion-briefing =
    Вы — Космический Служитель!
    Ваши цели перечислены в меню персонажа.
    Подробнее о своей роли вы можете узнать в справочнике.

cosmiccult-role-deconverted-fluff =
    Необъятная пустота наполняет ваш разум. Утешительная и всё же незнакомая пустота...
    Все мысли и воспоминания о времени в культе начинают меркнуть и расплываться.

cosmiccult-role-deconverted-briefing =
    Деконвертация!
    Вы больше не принадлежите к Космическому Культу.

cosmiccult-role-levelup-awaiting-input =
    Вы собрали достаточно энтропии, чтобы достичь нового уровня могущества.
    Настройте Влияние, чтобы узнать подробности.

## MALIGN RIFTS

cosmiccult-rift-inuse = Сейчас вы не можете это сделать.
cosmiccult-rift-invaliduser = У вас нет подходящих инструментов.
cosmiccult-rift-chaplainoops = Возьмите в руки священное писание.
cosmiccult-rift-alreadyempowered = Вы уже обрели могущество. Сила разлома пропадёт впустую.
cosmiccult-rift-beginabsorb = Разлом начинает сливаться с вами...
cosmiccult-rift-beginpurge = Ваше освящение начинает очищать зловещий разлом...

cosmiccult-rift-absorb = {$NAME} поглощает разлом. Зловещий свет наполняет его тело силой!
cosmiccult-rift-purge = {$NAME} изгоняет зловещий разлом из реальности!


## CHANTRY

cosmiccult-chantry-location = В районе {$location} обнаружен опасный рост Ноöсферного давления! Немедленно выдвигайтесь и вмешайтесь.
cosmiccult-chantry-destruction = Внезапный всплеск Ноöсферного давления нейтрализован. Сохраняйте бдительность.
cosmiccult-chantry-powerup = Пустотное святилище вспыхивает и оживает!

## UI / BASE POPUP

cosmiccult-ui-deconverted-title = Деконвертация
cosmiccult-ui-converted-title = Обращение
cosmiccult-ui-roundstart-title = Неизвестное

cosmiccult-ui-converted-text-1 =
    Вы обращены в Космического Служителя.
cosmiccult-ui-converted-text-2 =
    Вы наделены знанием, но лишены силы, которой обладают другие культисты.
    Помогайте культу достигать его целей и храните его тайну.

cosmiccult-ui-roundstart-text-1 =
    Вы — Космический Культист!
cosmiccult-ui-roundstart-text-2 =
    Помогайте культу достигать его целей и храните его тайну.
    Содействуйте замыслам других культистов.

cosmiccult-ui-deconverted-text-1 =
    Вы больше не принадлежите к Космическому Культу.
cosmiccult-ui-deconverted-text-2 =
    Вы потеряли все воспоминания о Космическом Культе.
    Если вас обратят снова, воспоминания вернутся.

cosmiccult-ui-popup-confirm = Подтвердить

## OBJECTIVES / CHARACTERMENU

objective-issuer-cosmiccult = [bold][color=#cae8e8]Неизвестное[/color][/bold]

objective-cosmiccult-charactermenu = Вы должны приблизить конец всего сущего. Выполняйте свои задания, чтобы продвинуть культ.
objective-cosmiccult-steward-charactermenu = Вы должны возглавить культ и приблизить конец всего сущего. Следите за успехами культа и помогайте ему продвигаться.

objective-condition-entropy-title = ВЫСОСАТЬ ЭНТРОПИЮ
objective-condition-entropy-desc = Совместными усилиями высосите из экипажа не менее {$count} энтропии.
objective-condition-culttier-title = ОБРЕСТИ МОГУЩЕСТВО
objective-condition-culttier-desc = Соберите достаточно энтропии, чтобы приблизить конец.
objective-condition-victory-title = ПРИБЛИЗИТЬ КОНЕЦ
objective-condition-victory-desc = Призовите Неизвестное и возвестите Последний Занавес.

## CHAT ANNOUNCEMENTS

cosmiccult-announce-tier1-warning = Сканеры регистрируют заметный рост Ноöсферного давления. Скоро могут появиться разломы реального пространства. Сообщите станционному священнику, если их заметите.

cosmiccult-announce-tier2-warning = Сканеры регистрируют значительный рост Ноöсферного давления. Целостность реального пространства под угрозой. Избегайте разрывов в ткани реальности.

cosmiccult-announce-tier3-fluff = Дуги Ноöсферной энергии с треском пробегают по стонущим конструкциям станции. Конец близок.
cosmiccult-announce-tier3-warning = Обнаружен критический рост Ноöсферного давления. Заражённый персонал следует нейтрализовать при обнаружении.

cosmiccult-announce-finale-warning = Всему экипажу. Ноöсферная аномалия выходит на сверхкритический уровень, приборы выходят из строя. Горизонт событий перехода из Ноöсферы в реальность НЕИЗБЕЖЕН. Если вы ещё не действуете по протоколу противодействия, немедленно выдвигайтесь и вмешайтесь. Повторяю: вмешайтесь немедленно или погибнете.

## MISC

cosmiccult-spire-entropy = На поверхности шпиля конденсируется крупица энтропии.
cosmiccult-entropy-unavailable = Сейчас вы не можете это сделать.
cosmiccult-astral-ascendant = {$name}, Вознесённое
cosmiccult-gear-pickup-rejection = {$ITEM} сопротивляется прикосновению {CAPITALIZE($TARGET)}!
cosmiccult-astral-minion = {$name}, Зловещее
cosmiccult-gear-pickup = Вы чувствуете, что распадаетесь, пока держите {$ITEM}!

cosmiccult-silicon-subverted-briefing =
    Зловещий свет пробегает по вашим схемам.
    Космический Культ подчинил себе ваши законы!

cosmiccult-silicon-chantry-briefing =
    Вы заточены в Пустотном Святилище!
    Экипаж может освободить вас, повредив святилище оружием.
    Если ритуал завершится, вы превратитесь в Энтропийного Колосса на стороне культа.
    Ритуал завершится через {$minutesandseconds}.

cosmiccult-silicon-colossus-briefing =
    Вы превратились в Энтропийного Колосса!
    Вы исполинский бастион зловещей силы. Сокрушите тех, кто вам противостоит.

cosmiccult-mindshield-popup = Всплеск зловещей энергии разрушает имплант!
