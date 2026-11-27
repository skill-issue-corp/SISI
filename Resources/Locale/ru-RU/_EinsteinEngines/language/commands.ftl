command-list-langs-desc = Показывает языки, на которых ваша сущность сейчас умеет говорить.
command-list-langs-help = Использование: {$command}

command-saylang-desc = Отправляет сообщение на указанном языке. Чтобы выбрать язык, укажите его название или номер в списке.
command-saylang-help = Использование: {$command} <ID языка> <сообщение>. Пример: {$command} TauCetiBasic "Привет, Мир!". Пример: {$command} 1 "Привет, Мир!"

command-language-select-desc = Выбирает язык, на котором будет говорить ваша сущность. Можно указать название языка или его номер в списке.
command-language-select-help = Использование: {$command} <ID языка>. Пример: {$command} 1. Пример: {$command} TauCetiBasic

command-language-spoken = Говорит:
command-language-understood = Понимает:
command-language-current-entry = {$id}. {$language} - {$name} (текущий)
command-language-entry = {$id}. {$language} - {$name}

command-language-invalid-number = Номер языка должен быть от 0 до {$total}. Можно также указать название языка.
command-language-invalid-language = Язык {$id} не существует или вы на нём не говорите.

# Toolshed

command-description-language-add = Добавляет язык сущности из входного потока. Два последних аргумента определяют, сможет ли сущность говорить на нём/понимать его. Пример: 'self language:add "SolCommon" true true'
command-description-language-rm = Удаляет язык у сущности из входного потока. Работает как language:add. Пример: 'self language:rm "TauCetiBasic" true true'.
command-description-language-lsspoken = Показывает все языки, на которых сущность умеет говорить. Пример: 'self language:lsspoken'
command-description-language-lsunderstood = Показывает все языки, которые понимает сущность. Пример: 'self language:lssunderstood'

command-description-translator-addlang = Добавляет новый язык перевода устройству из входного потока. Подробнее см. language:add.
command-description-translator-rmlang = Удаляет язык перевода у устройства из входного потока. Подробнее см. language:rm.
command-description-translator-addrequired = Добавляет язык, необходимый для работы переводчика из входного потока. Пример: 'ent 1234 translator:addrequired "TauCetiBasic"'
command-description-translator-rmrequired = Удаляет язык, необходимый для работы переводчика из входного потока. Пример: 'ent 1234 translator:rmrequired "TauCetiBasic"'
command-description-translator-lsspoken = Показывает все языки, на которые переводит устройство из входного потока. Пример: 'ent 1234 translator:lsspoken'
command-description-translator-lsunderstood = Показывает все языки, с которых переводит устройство из входного потока. Пример: 'ent 1234 translator:lsunderstood'
command-description-translator-lsrequired = Показывает все языки, необходимые для работы переводчика из входного потока. Пример: 'ent 1234 translator:lsrequired'

command-language-error-this-will-not-work = Это не сработает.
command-language-error-not-a-translator = Сущность {$entity} не является переводчиком.
