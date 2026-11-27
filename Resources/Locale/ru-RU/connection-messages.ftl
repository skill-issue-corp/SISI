cmd-whitelistadd-desc = Добавляет игрока с указанным именем пользователя в белый список сервера.
cmd-whitelistadd-help = Использование: whitelistadd <имя пользователя или ID пользователя>
cmd-whitelistadd-existing = {$username} уже в белом списке!
cmd-whitelistadd-added = {$username} добавлен в белый список
cmd-whitelistadd-not-found = Не удалось найти «{$username}»
cmd-whitelistadd-arg-player = [игрок]

cmd-whitelistremove-desc = Удаляет игрока с указанным именем пользователя из белого списка сервера.
cmd-whitelistremove-help = Использование: whitelistremove <имя пользователя или ID пользователя>
cmd-whitelistremove-existing = {$username} отсутствует в белом списке!
cmd-whitelistremove-removed = {$username} удалён из белого списка
cmd-whitelistremove-not-found = Не удалось найти «{$username}»
cmd-whitelistremove-arg-player = [игрок]

cmd-kicknonwhitelisted-desc = Отключает от сервера всех игроков вне белого списка.
cmd-kicknonwhitelisted-help = Использование: kicknonwhitelisted

ban-banned-permanent = Эту блокировку можно снять только через апелляцию.
ban-banned-permanent-appeal = Эту блокировку можно снять только через апелляцию. Подать её можно здесь: {$link}
ban-expires = Блокировка выдана на {$duration} мин. и истекает в {$time} UTC.
ban-banned-1 = Вам или другому пользователю этого компьютера или сетевого подключения запрещено играть на этом сервере.
ban-banned-2 = Причина блокировки: «{$reason}»
ban-banned-3 = Попытки обойти блокировку, например через новый аккаунт, регистрируются.

soft-player-cap-full = Сервер заполнен!
panic-bunker-account-denied = Сервер в режиме «бункер». Его часто включают для защиты от рейдов. Новые подключения с аккаунтов, которые не отвечают требованиям, временно отклоняются. Попробуйте позже
panic-bunker-account-denied-reason = Сервер в режиме «бункер». Его часто включают для защиты от рейдов. Новые подключения с аккаунтов, которые не отвечают требованиям, временно отклоняются. Попробуйте позже. Причина: «{$reason}»
panic-bunker-account-reason-account = Ваш аккаунт Space Station 14 создан слишком недавно. Он должен быть старше {$minutes} мин.
panic-bunker-account-reason-overall = Общее время игры на сервере должно превышать {$minutes} мин.

whitelist-playtime = У вас недостаточно игрового времени для входа на сервер. Нужно отыграть не менее {$minutes} мин.
whitelist-player-count = Сервер сейчас не принимает игроков. Попробуйте позже.
whitelist-notes = У вас слишком много замечаний администрации для входа на сервер. Чтобы просмотреть их, введите /adminremarks в чат.
whitelist-manual = Вас нет в белом списке этого сервера.
whitelist-blacklisted = Вы в чёрном списке этого сервера.
whitelist-always-deny = Вам запрещено подключаться к этому серверу.
whitelist-fail-prefix = Доступ по белому списку закрыт: {$msg}

cmd-blacklistadd-desc = Добавляет игрока с указанным именем пользователя в чёрный список сервера.
cmd-blacklistadd-help = Использование: blacklistadd <имя_пользователя>
cmd-blacklistadd-existing = {$username} уже в чёрном списке!
cmd-blacklistadd-added = {$username} добавлен в чёрный список
cmd-blacklistadd-not-found = Не удалось найти «{$username}»
cmd-blacklistadd-arg-player = [игрок]

cmd-blacklistremove-desc = Удаляет игрока с указанным именем пользователя из чёрного списка сервера.
cmd-blacklistremove-help = Использование: blacklistremove <имя_пользователя>
cmd-blacklistremove-existing = {$username} отсутствует в чёрном списке!
cmd-blacklistremove-removed = {$username} удалён из чёрного списка
cmd-blacklistremove-not-found = Не удалось найти «{$username}»
cmd-blacklistremove-arg-player = [игрок]

baby-jail-account-denied = Это сервер для новичков и тех, кто хочет им помогать. Подключения со слишком старых аккаунтов и с аккаунтов вне белого списка отклоняются. Загляните на другие серверы, чтобы узнать, что ещё есть в Space Station 14. Приятной игры!
baby-jail-account-denied-reason = Это сервер для новичков и тех, кто хочет им помогать. Подключения со слишком старых аккаунтов и с аккаунтов вне белого списка отклоняются. Загляните на другие серверы, чтобы узнать, что ещё есть в Space Station 14. Приятной игры! Причина: «{$reason}»
baby-jail-account-reason-account = Ваш аккаунт Space Station 14 создан слишком давно. Он должен быть младше {$minutes} мин.
baby-jail-account-reason-overall = Общее время игры на сервере должно быть меньше {$minutes} мин.

generic-misconfigured = Сервер неверно настроен и не принимает игроков. Свяжитесь с владельцем сервера и попробуйте позже.

ipintel-server-ratelimited = Сервер проверяет подключения через внешнюю службу, но лимит проверок исчерпан. Сообщите об этом администрации сервера и попросите помощи или попробуйте позже.
ipintel-unknown = Сервер проверяет подключения через внешнюю службу. При проверке вашего подключения произошла ошибка. Сообщите об этом администрации сервера и попросите помощи.
ipintel-suspicious = Похоже, вы подключаетесь через дата-центр, прокси, VPN или иное подозрительное соединение. По административным причинам сервер отклоняет такие подключения. Если у вас включён VPN или похожая служба, отключите её и попробуйте снова. Если считаете, что произошла ошибка, или вам нужна такая служба для игры, обратитесь к администрации сервера.

hwid-required = Ваш клиент отказался отправить идентификатор оборудования. За помощью обратитесь к администрации сервера.
