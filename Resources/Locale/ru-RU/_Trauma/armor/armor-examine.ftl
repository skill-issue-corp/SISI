-protection = урон { $protect ->
    [true] снижен
    *[false] [color=red]увеличен[/color]
} на [color=lightblue]{TOSTRING($value, "F1")}%[/color].

armor-coefficient-value-trauma = - [color=yellow]{$type}[/color] { -protection(protect: $protect, value: $value) }

stamina-resistance-coefficient-value-trauma = - [color=lightyellow]Стамина[/color] { -protection(protect: $protect, value: $value) }
