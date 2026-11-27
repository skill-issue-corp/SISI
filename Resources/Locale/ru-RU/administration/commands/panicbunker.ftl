# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Morb <14136326+Morb0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Hannah Giovanna Dawson <karakkaraz@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-panicbunker-desc = Переключает режим «бункер», который ужесточает ограничения на подключение к серверу.
cmd-panicbunker-help = Использование: panicbunker
panicbunker-command-enabled = Режим «бункер» включён.
panicbunker-command-disabled = Режим «бункер» выключен.

cmd-panicbunker_disable_with_admins-desc = Переключает автоматическое выключение режима «бункер» при подключении администратора.
cmd-panicbunker_disable_with_admins-help = Использование: panicbunker_disable_with_admins
panicbunker-command-disable-with-admins-enabled = Режим «бункер» будет автоматически выключаться, если на сервере есть администраторы.
panicbunker-command-disable-with-admins-disabled = Режим «бункер» больше не будет автоматически выключаться, если на сервере есть администраторы.

cmd-panicbunker_enable_without_admins-desc = Переключает автоматическое включение режима «бункер», когда отключается последний администратор.
cmd-panicbunker_enable_without_admins-help = Использование: panicbunker_enable_without_admins
panicbunker-command-enable-without-admins-enabled = Режим «бункер» будет автоматически включаться, если на сервере нет администраторов.
panicbunker-command-enable-without-admins-disabled = Режим «бункер» больше не будет автоматически включаться, если на сервере нет администраторов.

cmd-panicbunker_count_deadminned_admins-desc = Переключает учёт администраторов, отключивших свои полномочия, при автоматическом включении и выключении режима «бункер».
cmd-panicbunker_count_deadminned_admins-help = Использование: panicbunker_count_deadminned_admins
panicbunker-command-count-deadminned-admins-enabled = При автоматическом включении и выключении режима «бункер» будут учитываться администраторы, отключившие свои полномочия.
panicbunker-command-count-deadminned-admins-disabled = При автоматическом включении и выключении режима «бункер» администраторы, отключившие свои полномочия, учитываться не будут.

cmd-panicbunker_show_reason-desc = Переключает показ причины, по которой режим «бункер» отклонил подключение.
cmd-panicbunker_show_reason-help = Использование: panicbunker_show_reason
panicbunker-command-show-reason-enabled = Режим «бункер» теперь будет сообщать пользователям причину отказа в подключении.
panicbunker-command-show-reason-disabled = Режим «бункер» больше не будет сообщать пользователям причину отказа в подключении.

cmd-panicbunker_min_account_age-desc = Показывает или задаёт минимальный возраст учётной записи в минутах, необходимый для подключения в режиме «бункер».
cmd-panicbunker_min_account_age-help = Использование: panicbunker_min_account_age <минуты>
panicbunker-command-min-account-age-is = Минимальный возраст учётной записи для режима «бункер» в минутах: {$minutes}.
panicbunker-command-min-account-age-set = Минимальный возраст учётной записи для режима «бункер» установлен в минутах: {$minutes}.

cmd-panicbunker_min_overall_minutes-desc = Показывает или задаёт минимальное общее игровое время в минутах, необходимое для подключения в режиме «бункер».
cmd-panicbunker_min_overall_minutes-help = Использование: panicbunker_min_overall_minutes <минуты>
panicbunker-command-min-overall-minutes-is = Минимальное общее игровое время для режима «бункер» в минутах: {$minutes}.
panicbunker-command-min-overall-minutes-set = Минимальное общее игровое время для режима «бункер» установлено в минутах: {$minutes}.
