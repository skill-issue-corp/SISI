markings-search = Поиск
-markings-selection = { $selectable ->
    [0] Больше особенностей добавить нельзя.
    [1] Можно добавить ещё одну особенность.
   *[other] Можно добавить ещё особенностей: { $selectable }.
}
markings-limits = { $required ->
    [true] { $count ->
        [-1] Выберите хотя бы одну особенность.
        [0] Выбрать особенности нельзя, но почему-то нужно? Это ошибка.
        [1] Выберите одну особенность.
       *[other] Выберите хотя бы одну особенность. Максимум: {$count}. { -markings-selection(selectable: $selectable) }
    }
   *[false] { $count ->
        [-1] Выберите любое число особенностей.
        [0] Особенности недоступны.
        [1] Можно выбрать только одну особенность.
       *[other] Максимум особенностей: {$count}. { -markings-selection(selectable: $selectable) }
    }
}
markings-reorder = Порядок особенностей внешности

humanoid-marking-modifier-respect-limits = Учитывать ограничения
humanoid-marking-modifier-respect-group-sex = Учитывать ограничения группы и пола
humanoid-marking-modifier-base-layers = Базовые слои
humanoid-marking-modifier-enable = Включить
humanoid-marking-modifier-prototype-id = id прототипа:

# Categories

markings-organ-Torso = Туловище
markings-organ-Head = Голова
markings-organ-ArmLeft = Левая Рука
markings-organ-ArmRight = Правая Рука
markings-organ-HandRight = Правая Кисть
markings-organ-HandLeft = Левая Кисть
markings-organ-LegLeft = Левая Нога
markings-organ-LegRight = Правая Нога
markings-organ-FootLeft = Левая Стопа
markings-organ-FootRight = Правая Стопа
markings-organ-Eyes = Глаза

markings-layer-Special = Особое
markings-layer-Tail = Хвост
markings-layer-Tail-Moth = Крылья
markings-layer-Hair = Волосы
markings-layer-FacialHair = Волосы на Лице
markings-layer-UndergarmentTop = Майка
markings-layer-UndergarmentBottom = Трусы
markings-layer-Chest = Грудь
markings-layer-Head = Голова
markings-layer-Snout = Морда
markings-layer-SnoutCover = Морда (Накладка)
markings-layer-HeadSide = Голова (Сбоку)
markings-layer-HeadTop = Голова (Сверху)
markings-layer-Eyes = Глаза
markings-layer-RArm = Правая Рука
markings-layer-LArm = Левая Рука
markings-layer-RHand = Правая Кисть
markings-layer-LHand = Левая Кисть
markings-layer-RLeg = Правая Нога
markings-layer-LLeg = Левая Нога
markings-layer-RFoot = Правая Стопа
markings-layer-LFoot = Левая Стопа
markings-layer-Overlay = Накладка
markings-layer-TailOverlay = Накладка
