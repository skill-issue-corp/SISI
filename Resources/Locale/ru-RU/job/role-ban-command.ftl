### Localization for role ban command

cmd-roleban-desc = Запрещает игроку играть на выбранной должности
# Trauma - added severity and webhook reason
cmd-roleban-help = Использование: roleban <имя или ID пользователя> <должность> <причина> [длительность в минутах, оставьте пустым или укажите 0 для бессрочного запрета] [тяжесть] [причина для вебхука]

## Completion result hints
cmd-roleban-hint-1 = <имя или ID пользователя>
cmd-roleban-hint-2 = <должность>
cmd-roleban-hint-3 = <причина>
cmd-roleban-hint-4 = [длительность в минутах, оставьте пустым или укажите 0 для бессрочного запрета]
cmd-roleban-hint-5 = [тяжесть]

cmd-roleban-hint-duration-1 = Бессрочно
cmd-roleban-hint-duration-2 = 1 день
cmd-roleban-hint-duration-3 = 3 дня
cmd-roleban-hint-duration-4 = 1 неделя
cmd-roleban-hint-duration-5 = 2 недели
cmd-roleban-hint-duration-6 = 1 месяц


### Localization for role unban command

cmd-roleunban-desc = Снимает запрет на должность с игрока
cmd-roleunban-help = Использование: roleunban <ID запрета должности>
cmd-roleunban-unable-to-parse-id = Не удалось распознать {$id} как целочисленный id запрета.
                                   {$help}

## Completion result hints
cmd-roleunban-hint-1 = <ID запрета должности>


### Localization for roleban list command

cmd-rolebanlist-desc = Показывает запреты пользователя на должности
cmd-rolebanlist-help = Использование: <имя или ID пользователя> [включая снятые запреты]

## Completion result hints
cmd-rolebanlist-hint-1 = <имя или ID пользователя>
cmd-rolebanlist-hint-2 = [включая снятые запреты]


cmd-roleban-minutes-parse = Недопустимая длительность в минутах: {$time}.\n{$help}
cmd-roleban-severity-parse = Недопустимый уровень тяжести: {$severity}\n{$help}.
cmd-roleban-arg-count = Недопустимое число аргументов.
cmd-roleban-job-parse = Должности {$job} не существует.
cmd-roleban-name-parse = Не удалось найти игрока с таким именем.
cmd-roleban-success = Игроку {$target} запрещена должность {$role}. Причина: {$reason}. Срок: {$length}.

cmd-roleban-inf = бессрочно
cmd-roleban-until =  до {$expires}

# Department bans
cmd-departmentban-desc = Запрещает игроку играть на всех должностях отдела
# Trauma - added severity and webhook reason
cmd-departmentban-help = Использование: departmentban <имя или ID пользователя> <отдел> <причина> [длительность в минутах, оставьте пустым или укажите 0 для бессрочного запрета] [тяжесть] [причина для вебхука]
