# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 PrPleGoo <PrPleGoo@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

agent-id-new = { $number ->
    [0] Не получено новых допусков с {$card}.
    [1] Получен один новый допуск с {$card}.
   *[other] Получено новых допусков: {$number}. Источник: {$card}.
}

agent-id-open-ui-verb = Изменить настройки

agent-id-ui-menu-title = ID-Карта Агента
agent-id-ui-tab-settings = Настройки
agent-id-ui-tab-job-icons = Значки Должностей

agent-id-ui-input-name = Имя:
agent-id-ui-input-job = Должность:

agent-id-ui-os = Nuke#OS ™
agent-id-ui-os-flavor = Если сомневаетесь, мима никто не заподозрит
# Get your mind out of the gutter.
agent-id-ui-footer-flavor-left = Обычная ID-карта, ничего интересного
agent-id-ui-footer-flavor-right = v2.0
