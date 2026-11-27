# SPDX-FileCopyrightText: 2022 LittleBuilderJane <63973502+LittleBuilderJane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Myctai <108953437+Myctai@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 metalgearsloth <metalgearsloth@gmail.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 MilenVolf <63782763+MilenVolf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2024 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2024 strO0pwafel <153459934+strO0pwafel@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Commands
## Delay shuttle round end
cmd-delayroundend-desc = Останавливает таймер завершения раунда при выходе эвакуационного шаттла из гиперпространства.
cmd-delayroundend-help = Использование: delayroundend
emergency-shuttle-command-round-yes = Конец раунда отложен.
emergency-shuttle-command-round-no = Не удалось отложить конец раунда.

## Dock emergency shuttle
cmd-dockemergencyshuttle-desc = Вызывает эвакуационный шаттл и стыкует его со станцией... если это возможно.
cmd-dockemergencyshuttle-help = Использование: dockemergencyshuttle

## Launch emergency shuttle
cmd-launchemergencyshuttle-desc = Досрочно запускает эвакуационный шаттл, если это возможно.
cmd-launchemergencyshuttle-help = Использование: launchemergencyshuttle

# Emergency shuttle
emergency-shuttle-left = Эвакуационный Шаттл покинул станцию. До прибытия в ЦК примерно {$transitTime} сек.
emergency-shuttle-launch-time = Эвакуационный шаттл отправится через {$consoleAccumulator} сек.
emergency-shuttle-docked = Эвакуационный Шаттл пристыковался {$direction} от станции, {$location}. Он отправится через {$time} сек.{$extended}
emergency-shuttle-good-luck = Эвакуационный Шаттл не может найти станцию. Удачи.
emergency-shuttle-nearby = Эвакуационный Шаттл не нашёл подходящий стыковочный узел. Он вышел из ФТЛ {$direction} от станции, {$location}. Он отправится через {$time} сек.{$extended}
emergency-shuttle-extended = {" "}Из-за возникших обстоятельств отправление отложено.

# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = Досрочный запуск отключён
emergency-shuttle-console-auth-left = До досрочного запуска шаттла осталось подтверждений: {$remaining}.
emergency-shuttle-console-auth-revoked = Подтверждение досрочного запуска отозвано. Осталось подтверждений: {$remaining}.
emergency-shuttle-console-denied = Доступ запрещён

# UI
emergency-shuttle-console-window-title = Консоль Эвакуационного Шаттла
emergency-shuttle-ui-engines = ДВИГАТЕЛИ:
emergency-shuttle-ui-idle = Ожидание
emergency-shuttle-ui-repeal-all = Отозвать Все
emergency-shuttle-ui-early-authorize = Подтверждение Досрочного Запуска
emergency-shuttle-ui-authorize = ПОДТВЕРДИТЬ
emergency-shuttle-ui-repeal = ОТОЗВАТЬ
emergency-shuttle-ui-authorizations = Подтверждения
emergency-shuttle-ui-remaining = Осталось: {$remaining}

# Map Misc.
map-name-centcomm = Центральное Командование
map-name-terminal = Терминал Прибытия
