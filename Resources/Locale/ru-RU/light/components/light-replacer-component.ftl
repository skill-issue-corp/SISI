### Interaction Messages

# Shown when player tries to replace light, but there are no lights left
comp-light-replacer-missing-light = В {$light-replacer} больше нет ламп типа «{$light-name}».

# Shown when player tries to insert a broken light bulb into the light replacer.
comp-light-replacer-insert-broken-light = Вы не можете вставлять разбитые лампочки!

# Shown when a player attempts to replace a light with the same color & type as the active light.
comp-light-replacer-same-light = В светильнике уже есть {INDEFINITE($light)} {$light}!

# Radial Menu messages
comp-light-replacer-eject-specified-lights = Извлечь все {MAKEPLURAL($light)}.
comp-light-replacer-select-lights = Выбрать {MAKEPLURAL($light)}.
comp-light-replacer-open-empty = {CAPITALIZE($light-replacer)} совершенно пуст!

# Label
comp-light-replacer-label = Трубка: {$tube}
                            Лампочка: {$bulb}

### Examine

comp-light-replacer-no-lights = Здесь пусто.
comp-light-replacer-has-lights = Здесь находится следующее:
comp-light-replacer-light-listing = {$amount ->
    [one] [color=yellow]{$amount}[/color] [color=gray]{$name}[/color]
    *[other] [color=yellow]{$amount}[/color] [color=gray]{$name}[/color]
}

### Status Control

# Bulbs
comp-light-bulb-incandescent = накаливания
comp-light-bulb-dim = тусклый
comp-light-bulb-warm = тёплый
comp-light-bulb-service = служебный

# Tubes
comp-light-bulb-fluorescent = флуоресцентный
comp-light-bulb-exterior = наружный
comp-light-bulb-sodium = натриевый

# Both
comp-light-bulb-old = старый
comp-light-bulb-led = светодиодный
comp-light-bulb-cyan = голубой
comp-light-bulb-blue = синий
comp-light-bulb-yellow = желтый
comp-light-bulb-pink = розовый
comp-light-bulb-orange = оранжевый
comp-light-bulb-black = черный
comp-light-bulb-red = красный
comp-light-bulb-green = зеленый
