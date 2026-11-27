# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# FTLdiskburner
cmd-ftldisk-desc = Создаёт диск координат для ФТЛ-прыжка на карту, где находится указанная сущность.
cmd-ftldisk-help = ftldisk [EntityID]

cmd-ftldisk-no-transform = У сущности {$destination} нет Компонента Transform!
cmd-ftldisk-no-map = У сущности {$destination} нет карты!
cmd-ftldisk-no-map-comp = Сущность {$destination} находится на карте {$map} без компонента карты.
cmd-ftldisk-map-not-init = Сущность {$destination} находится на неинициализированной карте {$map}! Проверьте, что её можно безопасно инициализировать, и сначала сделайте это, иначе игроки застрянут!
cmd-ftldisk-map-paused = Сущность {$destination} находится на приостановленной карте {$map}! Снимите карту с паузы, иначе игроки застрянут.
cmd-ftldisk-planet = Сущность {$destination} находится на планетарной карте {$map}. Для перелёта потребуется точка ФТЛ. Возможно, она уже существует.
cmd-ftldisk-already-dest-not-enabled = Сущность {$destination} находится на карте {$map} с компонентом FTLDestinationComponent, но он отключён! Для безопасности включите его вручную.
cmd-ftldisk-requires-ftl-point = Сущность {$destination} находится на карте {$map}, для перелёта на которую нужна точка ФТЛ! Возможно, она уже существует.

cmd-ftldisk-hint = netID карты
