-protection = урон { $protect ->
    [true] уменьшен
    *[false] [color=red]увеличен[/color]
} на [color=lightblue]{TOSTRING($value, "F1")}%[/color].

armor-coefficient-value-trauma = - [color=yellow]{$type}[/color] { -protection(protect: $protect, value: $value) }

stamina-resistance-coefficient-value-trauma = - [color=lightyellow]Выносливость[/color] { -protection(protect: $protect, value: $value) }

armor-damage-type-ballistic = Баллистический
