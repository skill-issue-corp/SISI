## UI

cargo-console-menu-title = Консоль запросов карго
cargo-console-menu-flavor-left = Закажите ещё больше коробок пиццы, чем обычно!
cargo-console-menu-flavor-right = v2.1
cargo-console-menu-account-name-label = Счёт:{" "}
cargo-console-menu-account-name-none-text = Нет
cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold] [font="Monospace"]\[{$code}\][/font]
cargo-console-menu-shuttle-name-label = Название шаттла:{" "}
cargo-console-menu-shuttle-name-none-text = Нет
cargo-console-menu-points-label = Баланс:{" "}
cargo-console-menu-points-amount = ${$amount}
cargo-console-menu-shuttle-status-label = Состояние шаттла:{" "}
cargo-console-menu-shuttle-status-away-text = Отсутствует
cargo-console-menu-order-capacity-label = Лимит заказов:{" "}
cargo-console-menu-order-capacity-number = {$count}/{$capacity}
cargo-console-menu-call-shuttle-button = Активировать телепад
cargo-console-menu-permissions-button = Разрешения
cargo-console-menu-categories-label = Категории:{" "}
cargo-console-menu-search-bar-placeholder = Поиск
cargo-console-menu-requests-label = Запросы
cargo-console-menu-orders-label = Заказы
cargo-console-menu-populate-categories-all-text = Все
cargo-console-menu-order-row-title = {$productName} (x{$orderAmount} за {$orderPrice}$)
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = Отправитель запроса: {$orderRequester}, счёт [color={$accountColor}]{$account}[/color]
cargo-console-menu-order-row-product-description = Причина: {$orderReason}
cargo-console-menu-order-row-button-approve = Одобрить
cargo-console-menu-order-row-button-cancel = Отменить
cargo-console-menu-order-row-alerts-reason-absent = Причина не указана
cargo-console-menu-order-row-alerts-requester-unknown = Неизвестно
cargo-console-menu-tab-title-orders = Заказы
cargo-console-menu-tab-title-funds = Переводы
cargo-console-menu-account-action-transfer-limit = [bold]Лимит Переводов:[/bold] ${$limit}
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Без Лимита)[/color]
cargo-console-menu-account-action-select = [bold]Операция по Счёту:[/bold]
cargo-console-menu-account-action-amount = [bold]Сумма:[/bold] $
cargo-console-menu-account-action-button = Перевести
cargo-console-menu-toggle-account-lock-button = Включить/Отключить Лимит Переводов
cargo-console-menu-account-action-option-withdraw = Снять Наличные
cargo-console-menu-account-action-option-transfer = Перевести Средства на {$code}

# Orders
cargo-console-order-not-allowed = Доступ запрещён
cargo-console-station-not-found = Нет доступной станции
cargo-console-invalid-product = Неверный ID товара
cargo-console-too-many = Слишком много одобренных заказов
cargo-console-snip-snip = Заказ уменьшен до лимита
cargo-console-insufficient-funds = Недостаточно средств (нужно {$cost})
cargo-console-unfulfilled = Нет места для выполнения заказа
cargo-console-trade-station = Отправлено в {$destination}
cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold] на сумму [bold]{$cost}[/bold]. Заказ одобрил(а) [bold]{$approver}[/bold]
cargo-console-fund-withdraw-broadcast = [bold]{$name} снял(а) {$amount} спесо со счёта {$name1} \[{$code1}\]
cargo-console-fund-transfer-broadcast = [bold]{$name} перевёл(а) {$amount} спесо со счёта {$name1} \[{$code1}\] на счёт {$name2} \[{$code2}\][/bold]
cargo-console-fund-transfer-user-unknown = Неизвестно

cargo-console-paper-reason-default = Нет
cargo-console-paper-approver-default = Неизвестно
cargo-console-paper-print-name = Заказ #{$orderNumber}
cargo-console-paper-print-text = [head=2]Заказ #{$orderNumber}[/head]
    {"[bold]Товар:[/bold]"} {$itemName} (x{$orderQuantity})
    {"[bold]Отправитель запроса:[/bold]"} {$requester}

    {"[head=3]Данные о Заказе[/head]"}
    {"[bold]Плательщик[/bold]:"} {$account} [font="Monospace"]\[{$accountcode}\][/font]
    {"[bold]Кто одобрил:[/bold]"} {$approver}
    {"[bold]Причина:[/bold]"} {$reason}

# Cargo shuttle console
cargo-shuttle-console-menu-title = Консоль шаттла карго
cargo-shuttle-console-station-unknown = Неизвестно
cargo-shuttle-console-shuttle-not-found = Не найден
cargo-shuttle-console-organics = На шаттле обнаружены органические формы жизни
cargo-no-shuttle = Шаттл карго не найден!

# Funding allocation console
cargo-funding-alloc-console-menu-title = Консоль Распределения Средств
cargo-funding-alloc-console-label-account = [bold]Счёт[/bold]
cargo-funding-alloc-console-label-code = [bold] Код [/bold]
cargo-funding-alloc-console-label-balance = [bold] Баланс [/bold]
cargo-funding-alloc-console-label-cut = [bold] Распределение Доходов (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = Доля карго в доходах из прочих источников (%):
cargo-funding-alloc-console-label-lockbox-cut = Доля карго в доходах от продажи сейфов (%):

cargo-funding-alloc-console-label-help-non-adjustible = Карго получает {$percent}% прибыли от продажи товаров помимо сейфов. Остаток распределяется, как указано ниже:
cargo-funding-alloc-console-label-help-adjustible = Остаток средств из прочих источников распределяется, как указано ниже:
cargo-funding-alloc-console-button-save = Сохранить Изменения
cargo-funding-alloc-console-label-save-fail = [bold]Недопустимое Распределение Доходов![/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]Данные о Товаре[/head]
    {"[bold]Товар:[/bold]"} {$product}
    {"[bold]Описание:[/bold]"} {$description}
    {"[bold]Цена за единицу:[/bold"}] ${$unit}
    {"[bold]Количество:[/bold]"} {$amount}
    {"[bold]Стоимость:[/bold]"} ${$cost}

    {"[head=3]Данные о Покупке[/head]"}
    {"[bold]Заказчик:[/bold]"} {$orderer}
    {"[bold]Причина:[/bold]"} {$reason}
