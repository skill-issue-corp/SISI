entity-effect-guidebook-delete-entity = {$chance ->
    [1] удаляет
    *[other] удалить
} цель
entity-effect-guidebook-force-equip-clothing = {$chance ->
    [1] принудительно надевает
    *[other] принудительно надеть
} {$item} в слот «{$slot}» цели

entity-effect-guidebook-part-add-slot = {$chance ->
    [1] добавляет
    *[other] добавить
} слот «{$slot}» к целевой части тела

entity-effect-guidebook-insert-new-organ = {$chance ->
    [1] вставляет
    *[other] вставить
} орган «{$organ}» в целевую часть тела

entity-effect-guidebook-add-to-chemicals = { $chance ->
    [1] { $deltasign ->
            [1] Добавляет
            *[-1] Удаляет
        }
    *[other]
        { $deltasign ->
            [1] добавить
            *[-1] удалить
        }
} {NATURALFIXED($amount, 2)} ед. реагента «{$reagent}» { $deltasign ->
    [1] в раствор
    *[-1] из раствора
}

entity-effect-guidebook-make-traitor = { $chance ->
    [1] делает
    *[other] сделать
} цель предателем

entity-effect-guidebook-infect-disease = { $chance ->
    [1] заражает
    *[other] заразить
} цель болезнью «{$disease}»

entity-effect-guidebook-add-marking = { $chance ->
    [1] добавляет
    *[other] добавить
} отметину «{$marking}» цели
entity-effect-guidebook-remove-marking = { $chance ->
    [1] удаляет
    *[other] удалить
} отметину «{$marking}» у цели

entity-effect-guidebook-speak = Вызывает непроизвольную речь

entity-effect-guidebook-scale-entity = Меняет размер цели в пропорции ({$x}, {$y})

entity-effect-guidebook-attack-self = {$chance ->
    [1] заставляет
    *[other] заставить
} цель {$canUse ->
    [true] атаковать
    *[false] ударить
} себя
entity-effect-guidebook-attack-others = {$chance ->
    [1] заставляет
    *[other] заставить
} цель атаковать случайный объект рядом

entity-effect-guidebook-start-use-delay = {$chance ->
    [1] запускает
    *[other] запустить
} для цели задержку использования «{$id}»

entity-effect-guidebook-part-remove-slot = {$chance ->
    [1] удаляет
    *[other] удалить
} слот «{$slot}» из целевой части тела

entity-effect-guidebook-remove-part = {$chance ->
    [1] отделяет
    *[other] отделить
} выбранную часть тела

entity-effect-guidebook-set-standing = {$chance ->
    [1] заставляет
    *[other] заставить
} цель {$standing ->
    [true] встать
    *[other] упасть
}

entity-effect-guidebook-relay-random-part = для случайной части тела: {$effect}

entity-effect-guidebook-nothing = ничего не {$chance ->
    [1] происходит
    *[other] произойти
}

entity-effect-guidebook-scramble-dna = {$chance ->
    [1] перемешивает
    *[other] перемешать
} мутации цели

entity-effect-guidebook-move-organ = {$chance ->
    [1] перемещает
    *[other] переместить
} орган «{$organ}» цели в область «{$dest}»

entity-effect-guidebook-heal-bone-damage = { $chance ->
     [1] лечит
     *[other] вылечить
} {NATURALFIXED($amount, 2)} ед. повреждения костей
