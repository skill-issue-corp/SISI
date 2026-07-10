entity-effect-guidebook-delete-entity = {$chance ->
    [1] удаляет
    *[other] удаляют
} цель
entity-effect-guidebook-force-equip-clothing = принудительно {$chance ->
    [1] надевает
    *[other] надевают
} {A($name)} на {$slot} цели

entity-effect-guidebook-part-add-slot = {$chance ->
    [1] добавляет
    *[other] добавляют
} слот {$slot} к части тела цели

entity-effect-guidebook-insert-new-organ = {$chance ->
    [1] вставляет
    *[other] вставляют
} {$organ} в часть тела цели

entity-effect-guidebook-add-to-chemicals = { $chance ->
    [1] { $deltasign ->
            [1] Добавляет
            *[-1] Удаляет
        }
    *[other]
        { $deltasign ->
            [1] добавляют
            *[-1] удаляют
        }
} {NATURALFIXED($amount, 2)}ед. {$reagent} { $deltasign ->
    [1] в раствор
    *[-1] из раствора
}

entity-effect-guidebook-make-traitor = { $chance ->
    [1] делает
    *[other] делают
} цель предателем

entity-effect-guidebook-infect-disease = { $chance ->
    [1] заражает
    *[other] заражают
} цель болезнью {$disease}

entity-effect-guidebook-add-marking = { $chance ->
    [1] добавляет
    *[other] добавляют
} цели {$marking}
entity-effect-guidebook-remove-marking = { $chance ->
    [1] убирает
    *[other] убирают
} у цели {$marking}

entity-effect-guidebook-speak = Вызывает непроизвольную речь

entity-effect-guidebook-scale-entity = Масштабирует размер цели на ({$x}, {y})

entity-effect-guidebook-attack-self = {$chance ->
    [1] заставляет
    *[other] заставляют
} цель {$canUse ->
    [true] атаковать
    *[false] ударить
} саму себя
entity-effect-guidebook-attack-others = {$chance ->
    [1] заставляет
    *[other] заставляют
} цель атаковать случайный объект поблизости

entity-effect-guidebook-start-use-delay = {$chance ->
    [1] запускает
    *[other] запускают
} задержку использования {$id} у цели

entity-effect-guidebook-part-remove-slot = {$chance ->
    [1] удаляет
    *[other] удаляют
} слот {$slot} у части тела цели

entity-effect-guidebook-remove-part = {$chance ->
    [1] отделяет
    *[other] отделяют
} часть тела от тела

entity-effect-guidebook-set-standing = {$chance ->
    [1] заставляет
    *[other] заставляют
} цель {$standing ->
    [true] встать
    *[other] упасть
}

entity-effect-guidebook-relay-random-part = для случайной части тела, {$effect}

entity-effect-guidebook-nothing = ничего никогда не {$chance ->
    [1] происходит
    *[other] происходят
}

entity-effect-guidebook-scramble-dna = {$chance ->
    [1] перемешивает
    *[other] перемешивают
} мутации цели

entity-effect-guidebook-move-organ = {$chance ->
    [1] перемещает
    *[other] перемещают
} {$organ} цели в {$dest}

entity-effect-guidebook-heal-bone-damage = { $chance ->
     [1] исцеляет
     *[other] исцеляют
} {NATURALFIXED($amount, 2)} урона костям
