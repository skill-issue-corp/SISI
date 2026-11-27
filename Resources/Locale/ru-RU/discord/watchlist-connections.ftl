# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Palladinium <patrick.chieppe@hotmail.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

discord-watchlist-connection-header =
    { $players ->
        [one] {$players} игрок из списка наблюдения подключился
        [few] {$players} игрока из списка наблюдения подключились
        *[many] {$players} игроков из списка наблюдения подключились
    } к серверу {$serverName}

discord-watchlist-connection-entry = - {$playerName} с сообщением «{$message}»{ $expiry ->
        [0] {""}
        *[other] {" "}(истекает <t:{$expiry}:R>)
    }{ $otherWatchlists ->
        [0] {""}
        [one] {" "}и ещё в {$otherWatchlists} списке наблюдения
        [few] {" "}и ещё в {$otherWatchlists} списках наблюдения
        *[many] {" "}и ещё в {$otherWatchlists} списках наблюдения
    }
