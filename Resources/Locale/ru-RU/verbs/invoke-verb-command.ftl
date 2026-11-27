# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Localization used for the invoke verb command.
# Mostly help + error messages.

invoke-verb-command-description = Выполняет указанное действие на целевой сущности от лица сущности игрока
invoke-verb-command-help = invokeverb <playerUid | "self"> <targetUid> <verbName | "interaction" | "activation" | "alternative">

invoke-verb-command-invalid-args = Команда invokeverb принимает 2 аргумента.

invoke-verb-command-invalid-player-uid = Не удалось распознать uid игрока или не указано "self".
invoke-verb-command-invalid-target-uid = Не удалось распознать uid цели.

invoke-verb-command-invalid-player-entity = Указанный uid игрока не соответствует действительной сущности.
invoke-verb-command-invalid-target-entity = Указанный uid цели не соответствует действительной сущности.

invoke-verb-command-success = Выполнено действие «{ $verb }» над { $target } от лица { $player }.

invoke-verb-command-verb-not-found = У { $target } не найдено действие { $verb }.
