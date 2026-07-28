markings-search = Поиск
-markings-selection = { $selectable ->
    [0] У вас не осталось меток.
    [one] Вы можете выбрать ещё одну метку.
   *[other] Вы можете выбрать ещё { $selectable } меток.
}
markings-limits = { $required ->
    [true] { $count ->
        [-1] Выберите хотя бы одну метку.
        [0] Вы не можете выбрать ни одной метки, но почему-то должны? Это баг.
        [one] Выберите одну метку.
       *[other] Выберите хотя бы одну метку и не более {$count}. { -markings-selection(selectable: $selectable) }
    }
   *[false] { $count ->
        [-1] Выберите любое количество меток.
        [0] Вы не можете выбрать ни одной метки.
        [one] Выберите не более одной метки.
       *[other] Выберите не более {$count} меток. { -markings-selection(selectable: $selectable) }
    }
}
markings-reorder = Изменить порядок меток

humanoid-marking-modifier-respect-limits = Учитывать ограничения
humanoid-marking-modifier-respect-group-sex = Учитывать ограничения группы и пола
humanoid-marking-modifier-base-layers = Базовые слои
humanoid-marking-modifier-enable = Включить
humanoid-marking-modifier-prototype-id = ID прототипа:

# Categories

markings-organ-Torso = Торс
markings-organ-Head = Голова
markings-organ-ArmLeft = Левая рука
markings-organ-ArmRight = Правая рука
markings-organ-HandRight = Правая кисть
markings-organ-HandLeft = Левая кисть
markings-organ-LegLeft = Левая нога
markings-organ-LegRight = Правая нога
markings-organ-FootLeft = Левая ступня
markings-organ-FootRight = Правая ступня
markings-organ-Eyes = Глаза

markings-layer-Special = Особое
markings-layer-Tail = Хвост
markings-layer-Tail-Moth = Крылья
markings-layer-Hair = Волосы
markings-layer-FacialHair = Растительность на лице
markings-layer-UndergarmentTop = Майка
markings-layer-UndergarmentBottom = Трусы
markings-layer-Chest = Грудь
markings-layer-Head = Голова
markings-layer-Snout = Морда
markings-layer-SnoutCover = Морда (Накладка)
markings-layer-HeadSide = Голова (Сбоку)
markings-layer-HeadTop = Голова (Сверху)
markings-layer-Eyes = Глаза
markings-layer-RArm = Правая рука
markings-layer-LArm = Левая рука
markings-layer-RHand = Правая кисть
markings-layer-LHand = Левая кисть
markings-layer-RLeg = Правая нога
markings-layer-LLeg = Левая нога
markings-layer-RFoot = Правая ступня
markings-layer-LFoot = Левая ступня
markings-layer-Overlay = Наложение
markings-layer-TailOverlay = Наложение хвоста
