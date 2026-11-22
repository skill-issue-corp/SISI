# Battery Status
battery-status-charge = Заряд: [color=#5E7C16]{$percent}[/color] %
battery-status-switchable-state = { $state ->
        [on] [color=green]Включено[/color]
        [off] [color=red]Выключено[/color]
        *[other] Неизвестно
}
battery-status-state = Состояние: {$state}

# Charge Status
charge-status-count = Заряды: [color=fuchsia]{$current}/{$max}[/color]
charge-status-recharge = Перезарядка: [color=yellow]{$seconds}s[/color]

# Tank Pressure Status
tank-pressure-status = Давл.: [color=orange]{$pressure} kPa[/color]
tank-status-switchable-state = { $state ->
        [open] [color=red]Открыт[/color]
        [closed] [color=green]Закрыт[/color]
        *[other] Неизвестно
}
tank-status-state = Состояние: {$state}

# Magazine Status
magazine-status-rounds = Патроны: [color=yellow]{$current}/{$max}[/color]

# Guardian Status
guardian-status-used = [color=red]Использован[/color]
guardian-status-ready = [color=green]Готов[/color]

# Anomaly Status
anomaly-status-infinite = [color=gold]Бесконечные заряды[/color]
anomaly-status-charges = [color=orange]{$charges} зарядов[/color]

# Timer Trigger Status
timer-trigger-status-delay = Задержка: [color=white]{$delay}s[/color]
timer-trigger-status-delay-unknown = Set Delay: [color=gray]???[/color]
