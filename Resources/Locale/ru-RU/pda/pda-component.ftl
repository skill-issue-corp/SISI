# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Alex Evgrashin <aevgrashin@yandex.ru>
# SPDX-FileCopyrightText: 2022 TheDarkElites <73414180+TheDarkElites@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 ike709 <ike709@github.com>
# SPDX-FileCopyrightText: 2022 ike709 <ike709@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <comedian_vs_clown@hotmail.com>
# SPDX-FileCopyrightText: 2023 Chronophylos <nikolai@chronophylos.com>
# SPDX-FileCopyrightText: 2023 Daniil Sikinami <60344369+VigersRay@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Julian Giebel <juliangiebel@live.de>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later


### UI

# For the PDA screen
comp-pda-ui = ID: [color=white]{$owner}[/color], [color=yellow]{$jobTitle}[/color]

comp-pda-ui-blank = ID:

comp-pda-ui-owner = Владелец: [color=white]{$actualOwnerName}[/color]

comp-pda-io-program-list-button = Программы

comp-pda-io-settings-button = Настройки

comp-pda-io-program-fallback-title = Программа

comp-pda-io-no-programs-available = Нет Доступных Программ

pda-bound-user-interface-show-uplink-title = Открыть Аплинк
pda-bound-user-interface-show-uplink-description = Открыть ваш аплинк

pda-bound-user-interface-lock-uplink-title = Заблокировать Аплинк
pda-bound-user-interface-lock-uplink-description = Закрыть доступ к аплинку для всех, кто не знает кода

comp-pda-ui-menu-title = КПК

comp-pda-ui-footer = Карманный Персональный Компьютер

comp-pda-ui-station = Станция: [color=white]{$station}[/color]

comp-pda-ui-station-alert-level = Уровень Тревоги: [color={ $color }]{ $level }[/color]

comp-pda-ui-station-alert-level-instructions = Инструкции: [color=white]{ $instructions }[/color]

comp-pda-ui-station-time = Длительность смены: [color=white]{ $time }[/color]

comp-pda-ui-eject-id-button = Извлечь ID-карту

comp-pda-ui-eject-pen-button = Извлечь Ручку

comp-pda-ui-ringtone-button = Мелодия звонка

comp-pda-ui-ringtone-button-description = Сменить мелодию звонка вашего КПК

comp-pda-ui-toggle-flashlight-button = Переключить Фонарик

pda-bound-user-interface-music-button = Музыкальный Инструмент

pda-bound-user-interface-music-button-description = Играть музыку на вашем КПК

comp-pda-ui-unknown = Неизвестно

comp-pda-ui-unassigned = Без должности

pda-notification-message = [font size=12][bold]КПК[/bold] { $header }: [/font]
    «{ $message }»
