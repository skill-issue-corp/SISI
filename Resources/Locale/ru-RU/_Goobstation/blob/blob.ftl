objective-issuer-blob = Блоб

ghost-role-information-blobbernaut-name = Блоббернаут
ghost-role-information-blobbernaut-description = Вы — блоббернаут. Вы должны защищать ядро блоба. Используйте + или +e в чате, чтобы говорить в Коллективный разум Блоба.
ghost-role-information-blobbernaut-rules = Вы антагонист, защищайте ядро блоба!

ghost-role-information-blob-name = Блоб
ghost-role-information-blob-description = Вы — инфекция Блоба. Поглощайте станцию.
ghost-role-information-blob-rules = Вы антагонист, уничтожьте станцию!

roles-antag-blob-name = Блоб
roles-antag-blob-objective = Достигните критической массы.

guide-entry-blob = Блоб

# Popups
blob-target-normal-blob-invalid = Неверный тип блоба, выберите обычный блоб.
blob-target-factory-blob-invalid = Неверный тип блоба, выберите фабричный блоб.
blob-target-node-blob-invalid = Неверный тип блоба, выберите узловой блоб.
blob-target-close-to-resource = Слишком близко к другому ресурсному блобу.
blob-target-nearby-not-node = Поблизости нет узлового или ресурсного блоба.
blob-target-already-produce-blobbernaut = Эта фабрика уже произвела блоббернаута.
blob-cant-split = Вы не можете разделить ядро блоба.
blob-not-have-nodes = У вас нет узлов.
blob-not-enough-resources = Недостаточно ресурсов.
blob-help = Только Бог может вам помочь.
blob-swap-chem = В разработке.
blob-mob-attack-blob = Вы не можете атаковать блоба.
blob-get-resource = +{ $point }
blob-spent-resource = -{ $point }
blobberaut-not-on-blob-tile = Вы умираете вне плиток блоба.
carrier-blob-alert = У вас осталось { $second } секунд до превращения.

blob-mob-zombify-second-start = { $pod } начинает превращать вас в подконтрольного.
blob-mob-zombify-third-start = { $pod } начинает превращать { $target } в подконтрольного.

blob-mob-zombify-second-end = { $pod } превратил вас в подконтрольного.
blob-mob-zombify-third-end = { $pod } превратил { $target } в подконтрольного.

blobberaut-factory-destroy = фабрика уничтожена
blob-target-already-connected = уже подключено


# UI
blob-chem-swap-ui-window-name = Обмен химикатами

blob-alert-out-off-station = Блоб был удалён, так как находился вне станции!

# Announcment
blob-alert-recall-shuttle = Аварийный шаттл не может быть вызван, пока на станции присутствует биологическая угроза 5-го уровня.
blob-alert-detect = Подтверждена вспышка биологической угрозы 5-го уровня на станции. Все сотрудники обязаны сдерживать угрозу.
blob-alert-critical = Критический уровень биологической угрозы. На станцию отправлены коды ядерной аутентификации. Центральное командование приказывает всем оставшимся членам экипажа активировать механизм самоуничтожения.
blob-alert-critical-NoNukeCode = Критический уровень биологической угрозы. Центральное командование приказывает оставшимся членам экипажа укрыться и ожидать помощь.
blob-alert-shuttle-arrived = Обнаружена биологическая угроза. Весь персонал должен немедленно эвакуироваться.

# Actions
blob-teleport-to-node-action-name = Телепорт к узлу (0)
blob-teleport-to-node-action-desc = Телепортирует вас к случайному узловому блобу.
blob-help-action-name = Помощь
blob-help-action-desc = Получить базовую информацию об игре за блоба.

# Ghost role
blob-carrier-role-name = Носитель блоба
blob-carrier-role-desc = Существо, инфицированное блобом.
blob-carrier-role-rules =
    Вы — антагонист. У вас есть 10 минут до превращения в блоба.
    Используйте это время, чтобы найти безопасное место на станции. Учтите, что после превращения вы будете очень слабы.
# SIS-Start
blob-carrier-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Носитель Блоба[/gradient]!
    В вашем теле дремлет космический паразит 5-го уровня биоугрозы.
    Ваша задача: [color={$hl1}]найти изолированное место[/color] на станции и приготовиться к рождению Ядра.

blob-carrier-role-greeting-desc =
    • [color={$hl1}]Инкубация:[/color] у вас есть ограниченное время до взрыва. Спрячьтесь в тихих техотсеках или заброшенных комнатах.
    • [color={$hl1}]Уязвимость:[/color] сразу после перерождения ваше Ядро будет [color={$hl1}]очень слабым[/color] — не выдавайте себя раньше времени.
    • [color={$hl1}]Экспансия:[/color] после превращения стройте фабрики, ставьте узлы и [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]поглотите станцию целиком[/gradient]!
# SIS-End

# Verbs
blob-pod-verb-zombify = Подчинить
blob-verb-remove-blob-tile = Убрать блоб

# Alerts
blob-resource-alert-name = Ресурсы ядра
blob-resource-alert-desc = Ваши ресурсы, производимые ядром и ресурсными блобами. Используйте их для расширения и создания специализированных блобов.
blob-health-alert-name = Здоровье ядра
blob-health-alert-desc = Здоровье вашего ядра. Вы умрёте, если оно упадёт до нуля.

# Greeting
# SIS-Start
blob-role-greeting =
    Вы [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Ядро Блоба[/gradient], сверхорганическая космическая биомасса!
    Ваша цель — поглотить станцию и достичь [gradient color1="{$hl1}" color2="{$hl2}" speed="1.2"]критической массы[/gradient].

blob-role-greeting-desc =
    • [color={$hl1}]Защита:[/color] улучшайте обычные клетки в усиленные (защита от пуль) и отражающие (защита от лазеров) через Alt+ЛКМ.
    • [color={$hl1}]Экономика:[/color] стройте ресурсные клетки и фабрики [color={$hl1}]рядом с Узлами или Ядром[/color].
    • [color={$hl1}]Коллективный разум:[/color] используйте [color={$hl1}]+[/color] или [color={$hl1}]+e[/color] в чате для командования подчинёнными.
# SIS-End
blob-zombie-greeting = Вы были заражены и воскрешены спорами блоба. Теперь вам нужно помочь блобу захватить станцию. Используйте +e в чате для общения через коллективный разум Блоба.

# End round
blob-round-end-agent-name = blob infection

# Objectivies
objective-condition-blob-capture-title = Захватить станцию
objective-condition-blob-capture-description = Ваша единственная цель — захватить всю станцию. Для этого у вас должно быть не менее { $count } плиток блоба.
objective-condition-success = { $condition } | [color={ $markupColor }]Успех![/color]
objective-condition-fail = { $condition } | [color={ $markupColor }]Провал![/color] ({ $progress }%)

# Admin Verbs

admin-verb-make-blob = Сделать цель носителем блоба.
admin-verb-text-make-blob = Сделать носителем блоба

# Language
language-Blob-name = Блоб
chat-language-Blob-name = Блоб
language-Blob-description = Блиб боб! Блоб блоб!
