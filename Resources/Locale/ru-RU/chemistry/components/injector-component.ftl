## UI

injector-volume-transfer-label = Объём: [color=white]{$currentVolume}/{$totalVolume} ед.[/color]
    Режим: [color=white]{$modeString}[/color] ([color=white]{$transferVolume} ед.[/color])
injector-volume-label = Объём: [color=white]{$currentVolume}/{$totalVolume} ед.[/color]
    Режим: [color=white]{$modeString}[/color]
injector-toggle-verb-text = Переключить Режим Инъектора

## Entity

injector-component-inject-mode-name = введение
injector-component-draw-mode-name = забор
injector-component-dynamic-mode-name = автовыбор
injector-component-mode-changed-text = Теперь: {$mode}
injector-component-transfer-success-message = Вы переносите {$amount} ед. в {$target}.
injector-component-transfer-success-message-self = Вы переносите в себя {$amount} ед.
injector-component-inject-success-message = Вы вводите {$amount} ед. в {$target}!
injector-component-inject-success-message-self = Вы вводите себе {$amount} ед.!
injector-component-draw-success-message = Вы забираете {$amount} ед. из {$target}.
injector-component-draw-success-message-self = Вы забираете у себя {$amount} ед.

## Fail Messages

injector-component-target-already-full-message = {CAPITALIZE($target)} уже заполнено!
injector-component-target-already-full-message-self = В вас больше не помещается!
injector-component-target-is-empty-message = Внутри пусто: {CAPITALIZE($target)}!
injector-component-target-is-empty-message-self = Из вас нечего забрать!
injector-component-cannot-toggle-draw-message = Инъектор слишком полон для забора!
injector-component-cannot-toggle-inject-message = Нечего вводить!
injector-component-cannot-toggle-dynamic-message = Нельзя включить режим автовыбора!
injector-component-empty-message = {CAPITALIZE($injector)} пуст!
injector-component-blocked-user = Защитное снаряжение помешало вам сделать инъекцию!
injector-component-blocked-other = {CAPITALIZE(POSS-ADJ($target))} броня помешала {$user} сделать инъекцию!
injector-component-cannot-transfer-message = Вы не можете перенести жидкость в {$target}!
injector-component-cannot-transfer-message-self = Вы не можете перенести жидкость в себя!
injector-component-cannot-inject-message = Вы не можете сделать инъекцию в {$target}!
injector-component-cannot-inject-message-self = Вы не можете сделать себе инъекцию!
injector-component-cannot-draw-message = Вы не можете забрать жидкость из {$target}!
injector-component-cannot-draw-message-self = Вы не можете забрать у себя жидкость!
injector-component-ignore-mobs = Этот инъектор работает только с ёмкостями!

## mob-inject doafter messages

injector-component-needle-injecting-user = Вы начинаете вводить иглу.
injector-component-needle-injecting-target = {CAPITALIZE($user)} пытается ввести в вас иглу!
injector-component-needle-drawing-user = Вы начинаете забор жидкости иглой.
injector-component-needle-drawing-target = {CAPITALIZE($user)} пытается забрать у вас жидкость иглой!
injector-component-spray-injecting-user = Вы начинаете готовить распылитель.
injector-component-spray-injecting-target = {CAPITALIZE($user)} пытается приставить к вам распылитель!

## Target Popup Success messages
injector-component-feel-prick-message = Вы чувствуете лёгкий укол!
