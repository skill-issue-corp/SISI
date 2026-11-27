entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] общий урон составляет не менее {NATURALFIXED($min, 2)} ед.
        *[other] { $min ->
                    [0] общий урон составляет не более {NATURALFIXED($max, 2)} ед.
                    *[other] общий урон составляет от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед.
                 }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] урон составляет не менее {NATURALFIXED($min, 2)} ед. урона типа «{$type}»
        *[other] { $min ->
                    [0] урон составляет не более {NATURALFIXED($max, 2)} ед. урона типа «{$type}»
                    *[other] урон составляет от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед. урона типа «{$type}»
                 }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] урон составляет не менее {NATURALFIXED($min, 2)} ед. урона типа «{$type}».
        *[other] { $min ->
                    [0] урон составляет не более {NATURALFIXED($max, 2)} ед. урона типа «{$type}».
                    *[other] урон составляет от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед. урона типа «{$type}».
                 }
    }

entity-condition-guidebook-total-satiation =
    { $max ->
        [2147483648] у цели не менее {NATURALFIXED($min, 2)} ед. показателя «{$type}»
        *[other] { $min ->
                    [0] у цели не более {NATURALFIXED($max, 2)} ед. показателя «{$type}»
                    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед. показателя «{$type}»
                 }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] присутствует не менее {NATURALFIXED($min, 2)} ед. реагента «{$reagent}»
        *[other] { $min ->
                    [0] присутствует не более {NATURALFIXED($max, 2)} ед. реагента «{$reagent}»
                    *[other] присутствует от {NATURALFIXED($min, 2)} ед. до {NATURALFIXED($max, 2)} ед. реагента «{$reagent}»
                 }
    }

entity-condition-guidebook-mob-state-condition =
    состояние моба: { $state }

entity-condition-guidebook-job-condition =
    должность цели: { $job }

entity-condition-guidebook-solution-temperature =
    температура раствора составляет { $max ->
            [2147483648] не менее {NATURALFIXED($min, 2)} к
            *[other] { $min ->
                        [0] не более {NATURALFIXED($max, 2)} к
                        *[other] от {NATURALFIXED($min, 2)} к до {NATURALFIXED($max, 2)} к
                     }
    }

entity-condition-guidebook-body-temperature =
    температура тела составляет { $max ->
            [2147483648] не менее {NATURALFIXED($min, 2)} к
            *[other] { $min ->
                        [0] не более {NATURALFIXED($max, 2)} к
                        *[other] от {NATURALFIXED($min, 2)} к до {NATURALFIXED($max, 2)} к
                     }
    }

entity-condition-guidebook-organ-type =
    орган, усваивающий реагент, { $shouldhave ->
                                [true] относится
                                *[false] не относится
                           } к типу «{$name}»

entity-condition-guidebook-has-tag =
    у цели { $invert ->
                 [true] отсутствует
                 *[false] есть
                } тег «{$tag}»

entity-condition-guidebook-this-reagent = этот реагент

entity-condition-guidebook-breathing =
    тот, кто усваивает реагент, { $isBreathing ->
                [true] дышит нормально
                *[false] задыхается
               }

entity-condition-guidebook-internals =
    тот, кто усваивает реагент, { $usingInternals ->
                [true] использует кислородное снаряжение
                *[false] дышит окружающим воздухом
               }

entity-condition-guidebook-mouth-uncovered-condition =
    рот моба открыт
