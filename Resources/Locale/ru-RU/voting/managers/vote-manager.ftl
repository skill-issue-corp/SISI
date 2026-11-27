# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Paul Ritter <ritter.paul1@googlemail.com>
# SPDX-FileCopyrightText: 2021 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2021 Vera Aguilera Puerto <6766154+Zumorica@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Mervill <mervills.email@gmail.com>
# SPDX-FileCopyrightText: 2023 alexkar598 <25136265+alexkar598@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Repo <47093363+Titian3@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 SlamBamActionman <83650252+SlamBamActionman@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = Сервер

## Default.Votes

ui-vote-restart-title = Перезапустить раунд
ui-vote-restart-succeeded = Голосование за перезапуск прошло успешно.
ui-vote-restart-failed = Голосование за перезапуск не прошло (нужно { TOSTRING($ratio, "P0") }).
ui-vote-restart-fail-not-enough-ghost-players = Голосование за перезапуск не началось: для него требуется не менее { $ghostPlayerRequirement }% игроков-призраков. Сейчас их недостаточно.
ui-vote-restart-yes = Да
ui-vote-restart-no = Нет
ui-vote-restart-abstain = Воздержаться

ui-vote-gamemode-title = Следующий режим игры
ui-vote-gamemode-tie = Ничья в голосовании за режим! Выбран... { $picked }
ui-vote-gamemode-win = Победитель голосования за режим игры: { $winner }!

ui-vote-map-title = Следующая карта
ui-vote-map-tie = Ничья в голосовании за карту! Выбрана... { $picked }
ui-vote-map-win = Победитель голосования за карту: { $winner }!
ui-vote-map-notlobby = Голосовать за карту можно только в лобби до начала раунда!
ui-vote-map-notlobby-time = Голосовать за карту можно только в лобби, пока до начала раунда остаётся не меньше { $time }!
ui-vote-map-invalid = После голосования карта { $winner } стала недоступна! Она не будет выбрана!

# Votekick votes
ui-vote-votekick-unknown-initiator = Игрок
ui-vote-votekick-unknown-target = Неизвестный Игрок
ui-vote-votekick-title = { $initiator } предложил исключить игрока { $targetEntity }. Причина: { $reason }
ui-vote-votekick-yes = Да
ui-vote-votekick-no = Нет
ui-vote-votekick-abstain = Воздержаться
ui-vote-votekick-success = Игрок { $target } исключён по итогам голосования. Причина: { $reason }
ui-vote-votekick-failure = Голосование за исключение игрока { $target } не прошло. Причина: { $reason }
ui-vote-votekick-not-enough-eligible = В сети недостаточно игроков с правом голоса, чтобы начать голосование за исключение: { $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = Сервер отменил голосование за исключение игрока { $target }.
