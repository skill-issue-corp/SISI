# SPDX-FileCopyrightText: 2022 Aru Moon <anton17082003@gmail.com>
# SPDX-FileCopyrightText: 2022 Julian Giebel <juliangiebel@live.de>
# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 MishaUnity <81403616+MishaUnity@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Phill101 <28949487+Phill101@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Phill101 <holypics4@gmail.com>
# SPDX-FileCopyrightText: 2024 ArchRBX <5040911+ArchRBX@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Kot <1192090+koteq@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lapatison <100279397+lapatison@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Эдуард <36124833+Ertanic@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 deltanedas <39013340+deltanedas@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

device-pda-slot-component-slot-name-cartridge = Картридж

default-program-name = Программа
notekeeper-program-name = Заметки
nano-task-program-name = НаноТаск
news-read-program-name = Новости станции

crew-manifest-program-name = Список экипажа
crew-manifest-cartridge-loading = Загрузка ...
crew-manifest-cartridge-loading-failed = Не удалось загрузить список экипажа!

net-probe-program-name = СетевойСканер
net-probe-scan = Устройство {$device} просканировано!
net-probe-label-name = Имя
net-probe-label-address = Адрес
net-probe-label-frequency = Частота
net-probe-label-network = Сеть

log-probe-program-name = ЖурналДоступа
log-probe-scan = Журналы загружены с {$device}!
log-probe-label-time = Время
log-probe-label-accessor = Вошёл
log-probe-label-number = #
log-probe-print-button = Распечатать Журналы
log-probe-printout-device = Просканированное Устройство: {$name}
log-probe-printout-header = Последние записи:
log-probe-printout-entry = #{$number} / {$time} / {$accessor}

astro-nav-program-name = АстроНав

med-tek-program-name = МедТек

# NanoTask cartridge

nano-task-ui-heading-high-priority-tasks =
    { $amount ->
        [0] Нет Задач Высокого Приоритета
        [1] 1 Задача Высокого Приоритета
       *[other] Задач Высокого Приоритета: {$amount}
    }
nano-task-ui-heading-medium-priority-tasks =
    { $amount ->
        [0] Нет Задач Среднего Приоритета
        [1] 1 Задача Среднего Приоритета
       *[other] Задач Среднего Приоритета: {$amount}
    }
nano-task-ui-heading-low-priority-tasks =
    { $amount ->
        [0] Нет Задач Низкого Приоритета
        [1] 1 Задача Низкого Приоритета
       *[other] Задач Низкого Приоритета: {$amount}
    }
nano-task-ui-done = Готово
nano-task-ui-revert-done = Отменить действие
nano-task-ui-priority-low = Низкий
nano-task-ui-priority-medium = Средний
nano-task-ui-priority-high = Высокий
nano-task-ui-cancel = Отмена
nano-task-ui-print = Печать
nano-task-ui-delete = Удалить
nano-task-ui-save = Сохранить
nano-task-ui-new-task = Новая Задача
nano-task-ui-description-label = Описание:
nano-task-ui-description-placeholder = Достать что-нибудь важное
nano-task-ui-requester-label = Заказчик:
nano-task-ui-requester-placeholder = Джон NanoTrasen
nano-task-ui-item-title = Изменить Задачу
nano-task-printed-description = [bold]Описание[/bold]: {$description}
nano-task-printed-requester = [bold]Заказчик[/bold]: {$requester}
nano-task-printed-high-priority = [bold]Приоритет[/bold]: [color=red]Высокий[/color]
nano-task-printed-medium-priority = [bold]Приоритет[/bold]: Средний
nano-task-printed-low-priority = [bold]Приоритет[/bold]: Низкий

# Wanted list cartridge
wanted-list-program-name = Список разыскиваемых
wanted-list-label-no-records = Всё в порядке, ковбой
wanted-list-search-placeholder = Поиск по имени и статусу

wanted-list-age-label = [color=darkgray]Возраст:[/color] [color=white]{$age}[/color]
wanted-list-job-label = [color=darkgray]Должность:[/color] [color=white]{$job}[/color]
wanted-list-species-label = [color=darkgray]Вид:[/color] [color=white]{$species}[/color]
wanted-list-gender-label = [color=darkgray]Пол:[/color] [color=white]{$gender}[/color]

wanted-list-reason-label = [color=darkgray]Причина:[/color] [color=white]{$reason}[/color]
wanted-list-unknown-reason-label = причина неизвестна

wanted-list-initiator-label = [color=darkgray]Инициатор:[/color] [color=white]{$initiator}[/color]
wanted-list-unknown-initiator-label = инициатор неизвестен

# Trauma - added demote-perma
wanted-list-status-label = [color=darkgray]статус:[/color] {$status ->
        [demote] [color=red]разжаловать[/color]
        [brutalize] [color=orange]избить[/color]
        [search] [color=#008080]обыскать[/color]
        [perma] [color=#b18644]перма[/color]
        [suspected] [color=yellow]подозреваемый[/color]
        [wanted] [color=red]в розыске[/color]
        [detained] [color=#b18644]задержан[/color]
        [paroled] [color=green]условно освобождён[/color]
        [discharged] [color=green]освобождён[/color]
        [hostile] [color=darkred]враждебен[/color]
        [eliminated] [color=gray]ликвидирован[/color]
        *[other] нет
    }

wanted-list-history-table-time-col = Время
wanted-list-history-table-reason-col = Преступление
wanted-list-history-table-initiator-col = Инициатор
