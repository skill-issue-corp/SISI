# ban
cmd-ban-desc = Блокирует игрока
# Trauma - added severity and webhook reason
cmd-ban-help = Использование: ban <имя или ID пользователя> <причина> [длительность в минутах, опустите или укажите 0 для бессрочной блокировки] [серьёзность] [другая причина для вебхука]
cmd-ban-player = Не удалось найти игрока с таким именем.
cmd-ban-invalid-minutes = Недопустимое количество минут: {$minutes}!
cmd-ban-invalid-severity = Недопустимая серьёзность: {$severity}!
cmd-ban-invalid-arguments = Неверное количество аргументов
cmd-ban-hint = <имя/ID пользователя>
cmd-ban-hint-reason = <причина>
cmd-ban-hint-duration = [длительность]
cmd-ban-hint-severity = [серьёзность]

cmd-ban-hint-duration-1 = Бессрочно
cmd-ban-hint-duration-2 = 1 день
cmd-ban-hint-duration-3 = 3 дня
cmd-ban-hint-duration-4 = 1 неделя
cmd-ban-hint-duration-5 = 2 недели
cmd-ban-hint-duration-6 = 1 месяц

# ban panel
cmd-banpanel-desc = Открывает панель блокировок
cmd-banpanel-help = Использование: banpanel [имя или guid пользователя]
cmd-banpanel-server = Эта команда недоступна в консоли сервера
cmd-banpanel-player-err = Не удалось найти указанного игрока

# listbans
cmd-banlist-desc = Показывает действующие блокировки пользователя.
cmd-banlist-help = Использование: banlist <имя или ID пользователя>
cmd-banlist-empty = У {$user} нет действующих блокировок
cmd-banlist-hint = <имя/ID пользователя>

cmd-ban_exemption_update-desc = Устанавливает для игрока исключение из блокировки указанного типа.
cmd-ban_exemption_update-help = Использование: ban_exemption_update <игрок> <флаг> [<флаг> [...]]
    Укажите несколько флагов, чтобы задать игроку несколько исключений из блокировок.
    Чтобы снять все исключения, выполните эту команду, указав "None" как единственный флаг.

cmd-ban_exemption_update-nargs = Ожидалось как минимум 2 аргумента
cmd-ban_exemption_update-locate = Не удалось найти игрока «{$player}».
cmd-ban_exemption_update-invalid-flag = Недопустимый флаг «{$flag}».
cmd-ban_exemption_update-success = Обновлены флаги исключения из блокировок для «{$player}» ({$uid}).
cmd-ban_exemption_update-arg-player = <игрок>
cmd-ban_exemption_update-arg-flag = <флаг>

cmd-ban_exemption_get-desc = Показывает исключения из блокировок для указанного игрока.
cmd-ban_exemption_get-help = Использование: ban_exemption_get <игрок>

cmd-ban_exemption_get-nargs = Ожидался ровно 1 аргумент
cmd-ban_exemption_get-none = У пользователя нет исключений из блокировок.
cmd-ban_exemption_get-show = Для пользователя действуют исключения со следующими флагами: {$flags}.
cmd-ban_exemption_get-arg-player = <игрок>

# Ban panel
ban-panel-title = Панель блокировок
ban-panel-player = Игрок
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = Причина
ban-panel-last-conn = Взять IP и HWID из последнего подключения?
ban-panel-submit = Заблокировать
ban-panel-confirm = Вы уверены?
ban-panel-tabs-basic = Основные сведения
ban-panel-tabs-reason = Причина
ban-panel-tabs-players = Список Игроков
ban-panel-tabs-role = Сведения о блокировке роли
ban-panel-no-data = Для блокировки укажите пользователя, IP или HWID
ban-panel-invalid-ip = Не удалось распознать IP-адрес. Попробуйте ещё раз
ban-panel-select = Выберите тип
ban-panel-server = Блокировка на сервере
ban-panel-role = Блокировка роли
ban-panel-minutes = Минуты
ban-panel-hours = Часы
ban-panel-days = Дни
ban-panel-weeks = Недели
ban-panel-months = Месяцы
ban-panel-years = Годы
ban-panel-permanent = Бессрочно
ban-panel-ip-hwid-tooltip = Оставьте поле пустым и поставьте галочку ниже, чтобы использовать данные последнего подключения
ban-panel-severity = Серьёзность:
ban-panel-erase = Удалить сообщения из чата и игрока из раунда
ban-panel-expiry-error = ошибка

# Ban string
server-ban-string = {$admin} выдал блокировку на сервере с серьёзностью {$severity} до {$expires} для [{$name}, {$ip}, {$hwid}], причина: {$reason}
server-ban-string-no-pii = {$admin} выдал блокировку на сервере с серьёзностью {$severity} до {$expires} для {$name}, причина: {$reason}
server-ban-string-never = никогда

# Kick on ban
ban-kick-reason = Вы заблокированы
