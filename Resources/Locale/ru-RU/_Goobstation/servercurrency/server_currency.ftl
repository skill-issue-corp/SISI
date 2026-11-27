# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 gluesniffler <159397573+gluesniffler@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# Trauma - changed all Goob Coin to Evil Coin // inky - no
server-currency-name-singular = Монета Инки
server-currency-name-plural = Монеты Инки

## Commands

server-currency-gift-command = gift
server-currency-gift-command-description = Дарит другому игроку часть ваших средств.
server-currency-gift-command-help = Использование: gift <player> <value>
server-currency-gift-command-error-1 = Нельзя сделать подарок себе!
server-currency-gift-command-error-2 = Недостаточно средств для подарка! Ваш баланс: {$balance}.
server-currency-gift-command-giver = Вы дарите игроку {$player} сумму {$amount}.
server-currency-gift-command-reciever = Игрок {$player} дарит вам {$amount}.

server-currency-balance-command = balance
server-currency-balance-command-description = Показывает ваш баланс.
server-currency-balance-command-help = Использование: balance
server-currency-balance-command-return = У вас {$balance}.

server-currency-add-command = balance:add
server-currency-add-command-description = Пополняет баланс игрока.
server-currency-add-command-help = Использование: balance:add <player> <value>

server-currency-remove-command = balance:rem
server-currency-remove-command-description = Списывает средства с баланса игрока.
server-currency-remove-command-help = Использование: balance:rem <player> <value>

server-currency-set-command = balance:set
server-currency-set-command-description = Устанавливает баланс игрока.
server-currency-set-command-help = Использование: balance:set <player> <value>

server-currency-get-command = balance:get
server-currency-get-command-description = Показывает баланс игрока.
server-currency-get-command-help = Использование: balance:get <player>

server-currency-command-completion-1 = Имя Пользователя
server-currency-command-completion-2 = Значение
server-currency-command-error-1 = Не удалось найти игрока с таким именем.
server-currency-command-error-2 = Значение должно быть целым числом.
server-currency-command-return = У игрока {$player} на балансе {$balance}.

# 65% Update

gs-balanceui-title = Магазин
gs-balanceui-confirm = Подтвердить

gs-balanceui-gift-label = Перевод:
gs-balanceui-gift-player = Игрок
gs-balanceui-gift-player-tooltip = Введите имя игрока, которому хотите перевести деньги
gs-balanceui-gift-value = Сумма
gs-balanceui-gift-value-tooltip = Сумма перевода

gs-balanceui-shop-label = Магазин Жетонов
gs-balanceui-shop-empty = Товар закончился!
gs-balanceui-shop-buy = Купить
gs-balanceui-shop-footer = ⚠ Чтобы использовать жетон, напишите в Ahelp. Только 1 использование в день.

gs-balanceui-shop-token-label = Жетоны
gs-balanceui-shop-tittle-label = Титулы

gs-balanceui-shop-buy-token-antag = Купить Жетон Антага - {$price} { $price ->
    [one] Монета Инки
    [few] Монеты Инки
   *[other] Монет Инки
}
gs-balanceui-shop-buy-token-admin-abuse = Купить Жетон Админского Произвола - {$price} { $price ->
    [one] Монета Инки
    [few] Монеты Инки
   *[other] Монет Инки
}
gs-balanceui-shop-buy-token-hat = Купить Жетон Шляпы - {$price} { $price ->
    [one] Монета Инки
    [few] Монеты Инки
   *[other] Монет Инки
}

gs-balanceui-shop-token-antag = Жетон Антага Высокого Уровня
gs-balanceui-shop-token-admin-abuse = Жетон Админского Произвола
gs-balanceui-shop-token-hat = Жетон Шляпы

gs-balanceui-shop-buy-token-antag-desc = Позволяет стать любым антагом. (Кроме Волшебников)
gs-balanceui-shop-buy-token-admin-abuse-desc = Позволяет попросить администратора использовать свои полномочия против вас. Администраторам рекомендуется оторваться по полной.
gs-balanceui-shop-buy-token-hat-desc = Администратор выдаст вам случайную шляпу.

gs-balanceui-admin-add-label = Добавить (или вычесть) деньги:
gs-balanceui-admin-add-player = Имя игрока
gs-balanceui-admin-add-value = Сумма

gs-balanceui-remark-token-antag = Куплен жетон антага.
gs-balanceui-remark-token-admin-abuse = Куплен жетон админского произвола.
gs-balanceui-remark-token-hat = Куплен жетон шляпы.
gs-balanceui-shop-click-confirm = Нажмите ещё раз для подтверждения
gs-balanceui-shop-purchased = Куплено: {$item}
