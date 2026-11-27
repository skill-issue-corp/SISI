# SPDX-FileCopyrightText: 2024 DrSmugleaf <10968691+DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Tunguso4ka <71643624+Tunguso4ka@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-jobwhitelist-job-does-not-exist = Должность {$job} не существует.
cmd-jobwhitelist-player-not-found = Игрок {$player} не найден.
cmd-jobwhitelist-hint-player = [игрок]
cmd-jobwhitelist-hint-job = [должность]

cmd-jobwhitelistadd-desc = Разрешает игроку занимать должность, доступную по белому списку.
cmd-jobwhitelistadd-help = Использование: jobwhitelistadd <username> <job>
cmd-jobwhitelistadd-already-whitelisted = Игрок {$player} уже в белом списке для должности {$jobId} .({$jobName}).
cmd-jobwhitelistadd-added = Игрок {$player} добавлен в белый список должности {$jobId} ({$jobName}).

cmd-jobwhitelistget-desc = Возвращает все должности, для которых игрок внесён в белый список.
cmd-jobwhitelistget-help = Использование: jobwhitelistget <username>
cmd-jobwhitelistget-whitelisted-none = Игрок {$player} не состоит ни в одном белом списке должностей.
cmd-jobwhitelistget-whitelisted-for = Игрок {$player} состоит в белых списках должностей:
{$jobs}

cmd-jobwhitelistremove-desc = Лишает игрока права занимать должность из белого списка.
cmd-jobwhitelistremove-help = Использование: jobwhitelistremove <username> <job>
cmd-jobwhitelistremove-was-not-whitelisted = Игрок {$player} не состоял в белом списке должности {$jobId} ({$jobName}).
cmd-jobwhitelistremove-removed = Игрок {$player} удалён из белого списка должности {$jobId} ({$jobName}).
