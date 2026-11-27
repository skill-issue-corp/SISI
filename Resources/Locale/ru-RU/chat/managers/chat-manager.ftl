### UI

chat-manager-max-message-length = В вашем сообщении больше {$maxMessageLength} { $maxMessageLength ->
    [one] символа
   *[other] символов
}
chat-manager-ooc-chat-enabled-message = Чат OOC включён.
chat-manager-ooc-chat-disabled-message = Чат OOC отключён.
chat-manager-looc-chat-enabled-message = Чат LOOC включён.
chat-manager-looc-chat-disabled-message = Чат LOOC отключён.
chat-manager-dead-looc-chat-enabled-message = Мёртвые игроки теперь могут писать в LOOC.
chat-manager-dead-looc-chat-disabled-message = Мёртвые игроки больше не могут писать в LOOC.
chat-manager-crit-looc-chat-enabled-message = Игроки в крите теперь могут писать в LOOC.
chat-manager-crit-looc-chat-disabled-message = Игроки в крите больше не могут писать в LOOC.
chat-manager-admin-ooc-chat-enabled-message = Администраторский чат OOC включён.
chat-manager-admin-ooc-chat-disabled-message = Администраторский чат OOC отключён.
chat-manager-dead-chat-enabled-message = Чат мёртвых включён.
chat-manager-dead-chat-disabled-message = Чат мёртвых отключён.

chat-manager-max-message-length-exceeded-message = В вашем сообщении больше {$limit} { $limit ->
    [one] символа
   *[other] символов
}
chat-manager-no-headset-on-message = На вас нет гарнитуры!
chat-manager-no-radio-key = Не указан ключ радиоканала!
chat-manager-no-such-channel = Канала с ключом «{$key}» не существует!
chat-manager-whisper-headset-on-message = По рации нельзя говорить шёпотом!

# Unicode U+201C and U+201D Double quotes.
chat-manager-speech-double-quote-begin = «
chat-manager-speech-double-quote-end = »

chat-manager-server-wrap-message = [bold]{$message}[/bold]
chat-manager-sender-announcement = Центральное Командование
chat-manager-sender-announcement-wrap-message = [font size=14][bold]Объявление «{$sender}»:[/font][font size=12]
                                                {$message}[/bold][/font]

# Einstein Engines - Language begin (changing colors for text based on language color in handler)
# For the message in double quotes, the font/color/bold/italic elements are repeated twice, outside the double quotes and inside.
# The outside elements are for formatting the double quotes, and the inside elements are for formatting the text in speech bubbles ([BubbleContent]).
chat-manager-entity-say-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}, [font={$fontType} size={$fontSize}]{ chat-manager-speech-double-quote-begin }[BubbleContent][font="{$fontType}" size={$fontSize}][color={$color}]{$message}[/color][/font][/BubbleContent]{ chat-manager-speech-double-quote-end }[/font]
chat-manager-entity-say-bold-wrap-message = [BubbleHeader][bold][Name]{$entityName}[/Name][/bold][/BubbleHeader] {$verb}, [font={$fontType} size={$fontSize}]{ chat-manager-speech-double-quote-begin }[BubbleContent][font="{$fontType}" size={$fontSize}][bold][color={$color}]{$message}[/color][/bold][/font][/BubbleContent]{ chat-manager-speech-double-quote-end }[/font]

chat-manager-entity-whisper-wrap-message = [font size=11][italic][BubbleHeader][Name]{$entityName}[/Name][/BubbleHeader] шепчет, { chat-manager-speech-double-quote-begin }[BubbleContent][color={$color}][font="{$fontType}"]{$message}[/font][/color][/BubbleContent][font size=11]{ chat-manager-speech-double-quote-end }[/italic][/font]
chat-manager-entity-whisper-unknown-wrap-message = [font size=11][italic][BubbleHeader]Кто-то[/BubbleHeader] шепчет, { chat-manager-speech-double-quote-begin }[BubbleContent][color={$color}][font="{$fontType}"]{$message}[/color][/font][/BubbleContent][font size=11]{ chat-manager-speech-double-quote-end }[/italic][/font]
# Einstein Engines - Language end

# THE() is not used here because the entity and its name can technically be disconnected if a nameOverride is passed...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
    *[false] {$entityName} {$message}[/italic]
     [true] {CAPITALIZE($entityName)} {$message}[/italic]
    }

chat-manager-entity-looc-wrap-message = LOOC: [bold]{$entityName}:[/bold] {$message}
chat-manager-send-ooc-wrap-message = OOC: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message = OOC: [bold][color={$patronColor}]{$playerName}[/color]:[/bold] {$message}

chat-manager-send-dead-chat-wrap-message = {$deadChannelName}: [bold][BubbleHeader]{$playerName}[/BubbleHeader][/bold] {$verb}: «[BubbleContent]{$message}[/BubbleContent]»
chat-manager-send-admin-dead-chat-wrap-message = {$adminChannelName}: [bold]([BubbleHeader]{$userName}[/BubbleHeader])[/bold] {$verb}: «[BubbleContent]{$message}[/BubbleContent]»
chat-manager-send-admin-chat-wrap-message = {$adminChannelName}: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-admin-announcement-wrap-message = [bold]{$adminChannelName}: {$message}[/bold]

chat-manager-send-hook-ooc-wrap-message = OOC: [bold](D){$senderName}:[/bold] {$message}

chat-manager-dead-channel-name = МЁРТВЫЕ
chat-manager-admin-channel-name = АДМИНЫ

chat-manager-rate-limited = Вы отправляете сообщения слишком быстро!
chat-manager-rate-limit-admin-announcement = Предупреждение о частоте сообщений: { $player }

chat-manager-follow-button = (F)

## Speech verbs for chat

chat-speech-verb-suffix-exclamation = !
chat-speech-verb-suffix-exclamation-strong = !!
chat-speech-verb-suffix-question = ?
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ..

chat-speech-verb-name-none = Нет
chat-speech-verb-name-default = Стандартный
chat-speech-verb-default = говорит
chat-speech-verb-name-exclamation = Восклицание
chat-speech-verb-exclamation = восклицает
chat-speech-verb-name-exclamation-strong = Крик
chat-speech-verb-exclamation-strong = кричит
chat-speech-verb-name-question = Вопрос
chat-speech-verb-question = спрашивает
chat-speech-verb-name-stutter = Заикание
chat-speech-verb-stutter = заикается
chat-speech-verb-name-mumble = Бормотание
chat-speech-verb-mumble = бормочет

chat-speech-verb-name-arachnid = Арахнид
chat-speech-verb-insect-1 = стрекочет
chat-speech-verb-insect-2 = чирикает
chat-speech-verb-insect-3 = щёлкает

chat-speech-verb-name-moth = Ниан
chat-speech-verb-winged-1 = трепещет
chat-speech-verb-winged-2 = взмахивает крыльями
chat-speech-verb-winged-3 = жужжит

chat-speech-verb-name-slime = Слайм
chat-speech-verb-slime-1 = хлюпает
chat-speech-verb-slime-2 = булькает
chat-speech-verb-slime-3 = сочится

chat-speech-verb-name-plant = Диона
chat-speech-verb-plant-1 = шелестит
chat-speech-verb-plant-2 = покачивается
chat-speech-verb-plant-3 = скрипит

chat-speech-verb-name-robotic = Робот
chat-speech-verb-robotic-1 = сообщает
chat-speech-verb-robotic-2 = пикает
chat-speech-verb-robotic-3 = бупает

chat-speech-verb-name-reptilian = Унатх
chat-speech-verb-reptilian-1 = шипит
chat-speech-verb-reptilian-2 = фыркает
chat-speech-verb-reptilian-3 = пыхтит

chat-speech-verb-name-skeleton = Скелет / Плазмамен
chat-speech-verb-skeleton-1 = гремит
chat-speech-verb-skeleton-2 = стучит рёбрами
chat-speech-verb-skeleton-3 = гремит костями
chat-speech-verb-skeleton-4 = клацает
chat-speech-verb-skeleton-5 = трещит

chat-speech-verb-name-vox = Вокс
chat-speech-verb-vox-1 = визжит
chat-speech-verb-vox-2 = вскрикивает
chat-speech-verb-vox-3 = каркает

chat-speech-verb-name-canine = Псовый
chat-speech-verb-canine-1 = лает
chat-speech-verb-canine-2 = гавкает
chat-speech-verb-canine-3 = воет

chat-speech-verb-name-goat = Коза
chat-speech-verb-goat-1 = блеет
chat-speech-verb-goat-2 = хрюкает
chat-speech-verb-goat-3 = кричит

chat-speech-verb-name-sheep = Овца
chat-speech-verb-sheep-1 = блеет
chat-speech-verb-sheep-2 = бекает

chat-speech-verb-name-small-mob = Мышь
chat-speech-verb-small-mob-1 = пищит
chat-speech-verb-small-mob-2 = попискивает

chat-speech-verb-name-large-mob = Карп
chat-speech-verb-large-mob-1 = ревёт
chat-speech-verb-large-mob-2 = рычит

chat-speech-verb-name-monkey = Обезьяна
chat-speech-verb-monkey-1 = ухает
chat-speech-verb-monkey-2 = визжит

chat-speech-verb-name-cluwne = Клувень

chat-speech-verb-name-parrot = Попугай
chat-speech-verb-parrot-1 = каркает
chat-speech-verb-parrot-2 = щебечет
chat-speech-verb-parrot-3 = чирикает

chat-speech-verb-cluwne-1 = хихикает
chat-speech-verb-cluwne-2 = гогочет
chat-speech-verb-cluwne-3 = смеётся

chat-speech-verb-name-ghost = Призрак
chat-speech-verb-ghost-1 = жалуется
chat-speech-verb-ghost-2 = шепчет
chat-speech-verb-ghost-3 = напевает
chat-speech-verb-ghost-4 = бормочет

chat-speech-verb-name-electricity = Электричество
chat-speech-verb-electricity-1 = потрескивает
chat-speech-verb-electricity-2 = жужжит
chat-speech-verb-electricity-3 = визжит

chat-speech-verb-vulpkanin-1 = р-р-рычит
chat-speech-verb-vulpkanin-2 = лает
chat-speech-verb-vulpkanin-3 = урчит
chat-speech-verb-vulpkanin-4 = тявкает
chat-speech-verb-vulpkanin = Вульпканин

chat-speech-verb-name-wawa = Вава
chat-speech-verb-wawa-1 = произносит нараспев
chat-speech-verb-wawa-2 = сообщает
chat-speech-verb-wawa-3 = заявляет
chat-speech-verb-wawa-4 = размышляет
