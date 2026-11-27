# SPDX-FileCopyrightText: 2022 Eoin Mcloughlin <helloworld@eoinrul.es>
# SPDX-FileCopyrightText: 2022 Rinkashikachi <15rinkashikachi15@gmail.com>
# SPDX-FileCopyrightText: 2022 eoineoineoin <eoin.mcloughlin+gh@gmail.com>
# SPDX-FileCopyrightText: 2023 Justin <justinly@usc.edu>
# SPDX-FileCopyrightText: 2023 Thom <119594676+ItsMeThom@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 chromiumboy <50505512+chromiumboy@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Crotalus <Crotalus@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

lathe-menu-title = Меню Лата
lathe-menu-queue = Очередь
lathe-menu-server-list = Список серверов
lathe-menu-sync = Синхронизировать
lathe-menu-search-designs = Поиск чертежей
lathe-menu-category-all = Все
lathe-menu-search-filter = Фильтр:
lathe-menu-amount = Количество:
lathe-menu-recipe-count = { $count ->
    [one] {$count} Рецепт
    [few] {$count} Рецепта
    *[many] {$count} Рецептов
}
lathe-menu-reagent-slot-examine = Сбоку есть слот для мензурки.
lathe-reagent-dispense-no-container = Из {$name} на пол льётся жидкость!
lathe-menu-result-reagent-display = {$reagent} ({$amount} ед.)
lathe-menu-material-display = {$material} ({$amount})
lathe-menu-tooltip-display = {$material}: {$amount}
lathe-menu-description-display = [italic]{$description}[/italic]
lathe-menu-material-amount = {$unit} × {NATURALFIXED($amount, 2)}
lathe-menu-material-amount-missing = «{$material}»: {$unit} × {NATURALFIXED($amount, 2)} ([color=red]не хватает: {$unit} × {NATURALFIXED($missingAmount, 2)}[/color])
lathe-menu-no-materials-message = Материалы не загружены.
lathe-menu-silo-linked-message = Силос Подключён
lathe-menu-fabricating-message = Изготовление...
lathe-menu-materials-title = Материалы
lathe-menu-queue-title = Очередь Производства
lathe-menu-delete-fabricating-tooltip = Отменить печать текущего предмета.
lathe-menu-delete-item-tooltip = Отменить печать этой партии.
lathe-menu-move-up-tooltip = Продвинуть эту партию вперёд в очереди.
lathe-menu-move-down-tooltip = Сдвинуть эту партию назад в очереди.
lathe-menu-item-single = {$index}. {$name}
lathe-menu-item-batch = {$index}. {$name} ({$printed}/{$total})
