# SPDX-FileCopyrightText: 2023 Chief-Engineer <119664036+Chief-Engineer@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Riggle <27156122+RigglePrime@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 beck-thompson <107373427+beck-thompson@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# UI
admin-notes-title = Примечания об игроке {$player}
admin-notes-new-note = Новое примечание
admin-notes-show-more = Показать ещё
admin-notes-for = Примечание об игроке: {$player}
admin-notes-id = Id: {$id}
admin-notes-type = Тип: {$type}
admin-notes-severity = Серьёзность: {$severity}
admin-notes-secret = Скрытое
admin-notes-notsecret = Видимое
admin-notes-expires = Истекает: {$expires}
admin-notes-expires-never = Бессрочно
admin-notes-edited-never = Никогда
admin-notes-round-id = Id Раунда: {$id}
admin-notes-round-id-unknown = Id Раунда: Неизвестно
admin-notes-created-by = Кто создал: {$author}
admin-notes-created-at = Время Создания: {$date}
admin-notes-last-edited-by = Кто изменил последним: {$author}
admin-notes-last-edited-at = Время последнего изменения: {$date}
admin-notes-edit = Изменить
admin-notes-delete = Удалить
admin-notes-hide = Скрыть
admin-notes-delete-confirm = Подтвердить удаление
admin-notes-edited = Последнее изменение внёс(ла) {$author}, {$date}
admin-notes-unbanned = Бан снял(а) {$admin}, {$date}
admin-notes-message-desc = [color=white]С вашей последней игры на этом сервере вы получили { $count ->
    [one] {$count} сообщение
    [few] {$count} сообщения
   *[other] {$count} сообщений
} администрации.[/color]
admin-notes-message-admin = Отправитель: [bold]{ $admin }[/bold], дата: { TOSTRING($date, "f") }:
admin-notes-message-wait = Кнопка подтверждения будет доступна через {$time} с.
admin-notes-message-accept = Закрыть навсегда
admin-notes-message-dismiss = Закрыть пока
admin-notes-message-seen = Прочитано
admin-notes-banned-from = Бан
admin-notes-the-server = на сервере
admin-notes-permanently = бессрочно
admin-notes-days = {$days} дн.
admin-notes-hours = {$hours} ч.
admin-notes-minutes = {$minutes} мин.

# Note editor UI
admin-note-editor-title-new = Новое примечание об игроке {$player}
admin-note-editor-title-existing = Редактирование примечания {$id} об игроке {$player}, автор {$author}
admin-note-editor-pop-out = Отделить окно
admin-note-editor-secret = Скрытое?
admin-note-editor-secret-tooltip = Установите флажок, чтобы примечание было скрыто от игрока
admin-note-editor-type-note = Примечание
admin-note-editor-type-message = Сообщение
admin-note-editor-type-watchlist = Наблюдение
admin-note-editor-type-server-ban = Бан на Сервере
admin-note-editor-type-role-ban = Бан на Роль
admin-note-editor-severity-select = Выбрать
admin-note-editor-severity-none = Нет
admin-note-editor-severity-low = Низкая
admin-note-editor-severity-medium = Средняя
admin-note-editor-severity-high = Высокая
admin-note-editor-expiry-checkbox = Бессрочно?
admin-note-editor-expiry-checkbox-tooltip = Установите флажок, чтобы задать срок действия
admin-note-editor-expiry-label = Истекает через:
admin-note-editor-expiry-label-params = Истекает: {$date} (через {$expiresIn})
admin-note-editor-expiry-label-expired = Истекло
admin-note-editor-expiry-placeholder = Введите срок действия (целое число).
admin-note-editor-submit = Отправить
admin-note-editor-submit-confirm = Вы уверены?

# Time
admin-note-button-minutes = Минуты
admin-note-button-hours = Часы
admin-note-button-days = Дни
admin-note-button-weeks = Недели
admin-note-button-months = Месяцы
admin-note-button-years = Годы
admin-note-button-centuries = Века


# Verb
admin-notes-verb-text = Открыть Административные Примечания

# Watchlist and message login
admin-notes-watchlist = Наблюдение за {$player}: {$message}
admin-notes-new-message = Вы получили сообщение от администратора {$admin}: {$message}
admin-notes-fallback-admin-name = [Система]

# Admin remarks
admin-remarks-command-description = Открывает страницу замечаний администрации
admin-remarks-command-error = Замечания администрации отключены
admin-remarks-title = Замечания администрации

# Misc
system-user = [Система]
