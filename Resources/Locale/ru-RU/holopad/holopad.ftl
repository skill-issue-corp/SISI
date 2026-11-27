# SPDX-FileCopyrightText: 2024 ScarKy0 <106310278+ScarKy0@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Southbridge <7013162+southbridge-fur@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Window headers
holopad-window-title = {CAPITALIZE($title)}
holopad-window-subtitle = [color=white][bold]Система голографической связи[/bold][/color]
holopad-window-options = [color=darkgray][font size=10][italic]Выберите действие из списка ниже[/italic][/font][/color]

# Call status
holopad-window-no-calls-in-progress = Нет активных голографических вызовов
holopad-window-incoming-call = Входящий голографический вызов:
holopad-window-relay-label = Место вызова:
holopad-window-outgoing-call = Устанавливается связь...
holopad-window-call-in-progress = Идёт голографический вызов
holopad-window-call-ending = Разъединение...
holopad-window-call-rejected = Не удалось установить связь
holopad-window-ai-request = Вас вызывает:
holopad-window-emergency-broadcast-in-progress = [color=#cf2f2f][bold]Идёт экстренная трансляция[/bold][/color]
holopad-window-controls-locked-out = Управлять устройством может только:
holopad-window-controls-unlock-countdown = До автоматической разблокировки: {$countdown}

# Buttons
holopad-window-answer-call = Ответить на вызов
holopad-window-end-call = Завершить вызов
holopad-window-request-station-ai = Вызвать станционный ИИ
holopad-window-activate-projector = Включить проектор
holopad-window-emergency-broadcast = Экстренная трансляция
holopad-window-emergency-broadcast-with-countdown = Экстренная трансляция ({$countdown})
holopad-window-access-denied = Доступ запрещён

# Contact list
holopad-window-select-contact-from-list = Выберите контакт для голографического вызова
holopad-window-fetching-contacts-list = Нет доступных голопадов
holopad-window-contact-label = {CAPITALIZE($label)}
holopad-window-filter-line-placeholder = Поиск контакта

# Flavor
holopad-window-flavor-left = ⚠ Не входите, пока проектор включён
holopad-window-flavor-right = v3.0.9

# Holograms
holopad-hologram-name = голограмма {$name}

# Holopad actions
holopad-activate-projector-verb = Включить проектор голопада
holopad-ai-is-unable-to-reach-holopad = Источник вызова слишком далеко от вашего ядра. Связь с ним невозможна.
holopad-ai-is-unable-to-activate-projector = Голопад слишком далеко от вашего ядра. Включить проектор невозможно.

# Mapping prototypes
# General
holopad-general-tools = Общее - Инструменты
holopad-general-cryosleep = Общее - Криосон
holopad-general-theater = Общее - Театр
holopad-general-disposals = Общее - Мусоросброс
holopad-general-eva = Общее - Хранилище EVA
holopad-general-lounge = Общее - Зона Отдыха
holopad-general-arcade = Общее - Игровые Автоматы
holopad-general-evac = Общее - Эвакуация
holopad-general-arrivals = Общее - Прибытие

# Command
holopad-command-bridge = Командование - Мостик
holopad-command-vault = Командование - Хранилище
holopad-command-bridge-hallway = Командование - Коридор Мостика
holopad-command-meeting-room = Командование - Зал Совещаний
holopad-command-lounge = Командование - Зона Отдыха
holopad-command-captain = Командование - Капитан
holopad-command-hop = Командование - ГП
holopad-command-cmo = Командование - ГВ
holopad-command-qm = Командование - КМ
holopad-command-ce = Командование - СИ
holopad-command-rd = Командование - НР
holopad-command-hos = Командование - ГСБ

# Science
holopad-science-anomaly = Наука - Аномалии
holopad-science-artifact = Наука - Артефакты
holopad-science-artifact-north = Наука - Артефакты (Север)
holopad-science-artifact-south = Наука - Артефакты (Юг)
holopad-science-robotics = Наука - Робототехника
holopad-science-rnd = Наука - НиО
holopad-science-front = Наука - Приёмная
holopad-science-breakroom = Наука - Комната Отдыха

# Medical
holopad-medical-medbay = Медицина - Медотсек
holopad-medical-chemistry = Медицина - Химия
holopad-medical-cryopods = Медицина - Криокапсулы
holopad-medical-morgue = Медицина - Морг
holopad-medical-surgery = Медицина - Хирургия
holopad-medical-paramedic = Медицина - Парамедики
holopad-medical-virology = Медицина - Вирусология
holopad-medical-front = Медицина - Приёмная
holopad-medical-breakroom = Медицина - Комната Отдыха
holopad-medical-clinic = Медицина - Клиника

# Cargo
holopad-cargo-front = Карго - Приёмная
holopad-cargo-bay = Карго - Грузовой Отсек
holopad-cargo-salvage-bay = Карго - Утилизаторская
holopad-cargo-breakroom  = Карго - Комната Отдыха
holopad-cargo-ats = Карго - АТС
holopad-cargo-shuttle = Карго - Шаттл
holopad-cargo-mailroom = Карго - Почта

# Engineering
holopad-engineering-atmos-front = Атмос - Приёмная
holopad-engineering-atmos-main = Атмос - Основной Отсек
holopad-engineering-atmos-teg = Атмос - ТЭГ
holopad-engineering-storage = Инженерия - Склад
holopad-engineering-breakroom = Инженерия - Комната Отдыха
holopad-engineering-front = Инженерия - Приёмная
holopad-engineering-telecoms = Инженерия - Телекоммуникации
holopad-engineering-tech-vault = Инженерия - Техническое Хранилище
holopad-engineering-ame = Инженерия - ДАМ
holopad-engineering-power = Инженерия - Электропитание
holopad-engineering-main = Инженерия - Основной Отсек

# Security
holopad-security-front = Служба Безопасности - Приёмная
holopad-security-brig = Служба Безопасности - Бриг
holopad-security-warden = Служба Безопасности - Смотритель
holopad-security-interrogation = Служба Безопасности - Допросная
holopad-security-breakroom = Служба Безопасности - Комната Отдыха
holopad-security-detective = Служба Безопасности - Детектив
holopad-security-perma = Служба Безопасности - Перма
holopad-security-courtroom = Служба Безопасности - Зал Суда
holopad-security-lawyer = Служба Безопасности - Адвокат
holopad-security-armory = Служба Безопасности - Оружейная
holopad-security-locker-room = Служба Безопасности - Раздевалка
holopad-security-brig-med = Служба Безопасности - Бригмед
holopad-security-evac-checkpoint = Служба Безопасности - КПП Эвакуации
holopad-security-arrivals-checkpoint = Служба Безопасности - КПП Прибытия

# Service
holopad-service-janitor = Обслуживание - Уборщик
holopad-service-bar = Обслуживание - Бар
holopad-service-kitchen = Обслуживание - Кухня
holopad-service-botany = Обслуживание - Ботаника
holopad-service-chapel = Обслуживание - Часовня
holopad-service-library = Обслуживание - Библиотека
holopad-service-newsroom = Обслуживание - Редакция
holopad-service-zookeeper = Обслуживание - Смотритель Зоопарка
holopad-service-boxer = Обслуживание - Боксёр
holopad-service-clown = Обслуживание - Клоун
holopad-service-musician = Обслуживание - Музыкант
holopad-service-mime = Обслуживание - Мим
holopad-service-clown-mime = Обслуживание - Клоун/Мим
holopad-service-gameroom = Обслуживание - Игровая Комната

# AI
holopad-ai-core = ИИ - Ядро
holopad-ai-main = ИИ - Основной Отсек
holopad-ai-upload = ИИ - Загрузка Законов
holopad-ai-backup-power = ИИ - Резервное Питание
holopad-ai-entrance = ИИ - Вход
holopad-ai-chute = ИИ - Мусоросброс

# Long Range
holopad-station-bridge = Станция - Мостик
holopad-station-cargo-bay = Станция - Грузовой Отсек

# CentComm
holopad-centcomm-evac = ЦК - Эвакуационный Шаттл
