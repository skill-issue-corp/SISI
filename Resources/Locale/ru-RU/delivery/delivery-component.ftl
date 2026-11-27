delivery-recipient-examine = Адресат - {$recipient}, {$job}.
delivery-already-opened-examine = Уже вскрыто.
delivery-earnings-examine = За доставку станция получит [color=yellow]{$spesos}[/color] спесо.
delivery-recipient-no-name = Без имени
delivery-recipient-no-job = Неизвестно

delivery-unlocked-self = Вы разблокируете {$delivery} своим отпечатком пальца.
delivery-opened-self = Вы вскрываете {$delivery}.
delivery-unlocked-others = {CAPITALIZE($recipient)} разблокировал(а) {$delivery} с помощью {POSS-ADJ($possadj)} отпечатка пальца.
delivery-opened-others = {CAPITALIZE($recipient)} вскрыл(а) {$delivery}.

delivery-unlock-verb = Разблокировать
delivery-open-verb = Вскрыть
delivery-slice-verb = Разрезать

delivery-teleporter-amount-examine =
    { $amount ->
        [one] Внутри [color=yellow]{$amount}[/color] отправление.
        [few] Внутри [color=yellow]{$amount}[/color] отправления.
        *[many] Внутри [color=yellow]{$amount}[/color] отправлений.
    }
delivery-teleporter-empty = Пусто: {$entity}.
delivery-teleporter-empty-verb = Забрать почту


# modifiers
delivery-priority-examine = Отправление [color=orange]срочное ({$type})[/color]. Доставьте его за [color=orange]{$time}[/color] и получите премию.
delivery-priority-delivered-examine = Отправление [color=orange]срочное ({$type})[/color]. Его доставили вовремя.
delivery-priority-expired-examine = Отправление [color=orange]срочное ({$type})[/color]. Срок доставки истёк.

delivery-fragile-examine = Отправление [color=red]хрупкое ({$type})[/color]. Доставьте его целым и получите премию.
delivery-fragile-broken-examine = Отправление [color=red]хрупкое ({$type})[/color]. Похоже, оно сильно повреждено.

delivery-bomb-examine = Внутри [color=purple]бомба ({$type})[/color]. О нет.
delivery-bomb-primed-examine = Внутри [color=purple]бомба ({$type})[/color]. Зря вы тратите время на чтение.
