-create-3rd-person =
    { $chance ->
        [1] Создаёт
        *[other] создать
    }

-cause-3rd-person =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    }

-satiate-3rd-person =
    { $chance ->
        [1] Утоляет
        *[other] утолить
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {$entname}
    }

entity-effect-guidebook-destroy =
    { $chance ->
        [1] Уничтожает
        *[other] уничтожить
    } объект

entity-effect-guidebook-break =
    { $chance ->
        [1] Ломает
        *[other] сломать
    } объект

entity-effect-guidebook-explosion =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } взрыв

entity-effect-guidebook-emp =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } электромагнитный импульс

entity-effect-guidebook-flash =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } ослепляющую вспышку

entity-effect-guidebook-foam-area =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } большое количество пены

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } большое количество дыма

entity-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Утоляет
        *[other] утолить
    } { $relative ->
        [1] жажду в среднем темпе
        *[other] жажду в {NATURALFIXED($relative, 3)}x от среднего темпа
    }

entity-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Утоляет
        *[other] утолить
    } { $relative ->
        [1] голод в среднем темпе
        *[other] голод в {NATURALFIXED($relative, 3)}x от среднего темпа
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Восстанавливает
                [deals] Наносит
                *[both] Изменяет здоровье на
             }
        *[other] { $healsordeals ->
                    [heals] восстановить
                    [deals] нанести
                    *[both] изменить здоровье на
                 }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] Равномерно восстанавливает
            [deals] Равномерно наносит
            *[both] Равномерно изменяет здоровье на
        }
        *[other] { $healsordeals ->
            [heals] равномерно восстановить
            [deals] равномерно нанести
            *[both] равномерно изменить здоровье на
        }
    } { $changes }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                     *[other] вызвать
                 } {$key} минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } {$key} минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} с накоплением
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } {$key} на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {NATURALFIXED($time, 3)} {MANY("секунда", $time)} {$key}
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                 } {$key} минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } {$key} минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} с накоплением
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } {$key} минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {NATURALFIXED($time, 3)} {MANY("секунда", $time)} {$key}
    } { $delay ->
        [0] немедленно
        *[other] после задержки в {NATURALFIXED($delay, 3)} секунд
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect-indef =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                 } постоянный(-ое/-ую) {$key}
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } постоянный(-ое/-ую) {$key}
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } постоянный(-ое/-ую) {$key}
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {$key}
    } { $delay ->
        [0] немедленно
        *[other] после задержки в {NATURALFIXED($delay, 3)} секунд
    }

# Trauma - LOC($key) -> knockdown, copy paste major
entity-effect-guidebook-knockdown =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                    } сбивание с ног минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } сбивание с ног минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} с накоплением
        *[set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } сбивание с ног минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)} без накопления
        [remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {NATURALFIXED($time, 3)} {MANY("секунда", $time)} сбивания с ног
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Устанавливает
        *[other] установить
    } температуру раствора ровно на {NATURALFIXED($temperature, 2)}K

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] убрать
            }
    } тепло { $deltasign ->
                [1] в
                *[-1] из
           } раствор{ $deltasign ->
                [1] {""}
                *[-1] а
           }, пока он не достигнет { $deltasign ->
                [1] не более {NATURALFIXED($maxtemp, 2)}K
                *[-1] не менее {NATURALFIXED($mintemp, 2)}K
            }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] убрать
            }
    } {NATURALFIXED($amount, 2)}ед. {$reagent} { $deltasign ->
        [1] в раствор
        *[-1] из раствора
    }

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] убрать
            }
    } {NATURALFIXED($amount, 2)}ед. реагентов из группы {$group} { $deltasign ->
            [1] в раствор
            *[-1] из раствора
        }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] убрать
            }
    } {POWERJOULES($amount)} тепла { $deltasign ->
            [1] телу, в котором находится
            *[-1] от тела, в котором находится
        }

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } болезнь { $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } болезни { $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } дрожь

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] Очищает
        *[other] очистить
    } кровоток от других химикатов

entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] Излечивает
        *[other] излечить
    } болезни

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Наносит
                *[-1] Лечит
            }
        *[other]
            { $deltasign ->
                [1] нанести
                *[-1] вылечить
            }
    } урон глазам

entity-effect-guidebook-vomit =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } рвоту

entity-effect-guidebook-create-gas =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } { $moles } { $moles ->
        [1] моль
        *[other] моль
    } { $gas }

entity-effect-guidebook-drunk =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } опьянение

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] { $stuns ->
            [true] Поражает электрошоком
            *[false] Бьёт током
            }
        *[other] { $stuns ->
            [true] поразить электрошоком
            *[false] ударить током
            }
    } метаболизатора на {NATURALFIXED($time, 3)} {MANY("секунда", $time)}

entity-effect-guidebook-emote =
    { $chance ->
        [1] Заставит
        *[other] заставить
    } метаболизатора [bold][color=white]{$emote}[/color][/bold]

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Тушит
        *[other] потушить
    } огонь

# Trauma - $direction is set from the Flammable effect's multiplier sign, so negative Flammable reagents read "Decreases flammability"; defaults to increase
entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] { $direction ->
                [decrease] Уменьшает
                *[increase] Увеличивает
            }
        *[other] { $direction ->
                [decrease] уменьшить
                *[increase] увеличить
            }
    } воспламеняемость

entity-effect-guidebook-ignite =
    { $chance ->
        [1] Поджигает
        *[other] поджечь
    } метаболизатора

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] Делает
        *[other] сделать
    } метаболизатора разумным

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Превращает
        *[other] превратить
    } метаболизатора в { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Вызывает
                *[-1] Уменьшает
            }
        *[other] { $deltasign ->
                    [1] вызвать
                    *[-1] уменьшить
                 }
    } кровотечение

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Увеличивает
                *[-1] Уменьшает
            }
        *[other] { $deltasign ->
                    [1] увеличить
                    *[-1] уменьшить
                 }
    } уровень крови

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] Парализует
        *[other] парализовать
    } метаболизатора минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)}

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Изменяет
        *[other] изменить
    } скорость передвижения в {NATURALFIXED($sprintspeed, 3)}x минимум на {NATURALFIXED($time, 3)} {MANY("секунда", $time)}

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Временно предотвращает
        *[other] временно предотвратить
    } нарколепсию

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Смывает
        *[other] смыть
    } кремовый торт с лица

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Излечивает
        *[other] излечить
    } текущую зомби-инфекцию

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Заражает
        *[other] заразить
    } человека зомби-инфекцией

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Излечивает
        *[other] излечить
    } текущую зомби-инфекцию и обеспечивает иммунитет к будущим заражениям

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Восстанавливает
        *[other] восстановить
    } {NATURALFIXED($time, 3)} {MANY("секунда", $time)} разложения

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } реакцию дыма или пены на {NATURALFIXED($duration, 3)} {MANY("секунда", $duration)}

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } добавление {$reagent} во внутренний контейнер с раствором

entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] Помогает
        *[other] помочь
        } разблокировать инопланетный артефакт.

entity-effect-guidebook-artifact-durability-restore =
    Восстанавливает {$restored} прочности в активных узлах инопланетного артефакта.

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] Изменяет
        *[other] изменить
    } {$attribute} на {$positive ->
    [false] [color=red]{$amount}[/color]
    *[true] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Омолаживает
        *[other] омолодить
    } растение, в зависимости от его возраста и времени роста

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Восстанавливает
        *[other] восстановить
    } жизнеспособность растения, утраченную из-за мутации

entity-effect-guidebook-plant-remove-kudzu =
    { $chance ->
        [1] Удаляет
        *[other] удалить
    } заросли кудзу с растения

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] Увеличивает
        *[other] увеличить
    } продолжительность жизни и/или базовое здоровье растения с шансом 10% на каждое

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Увеличивает
        *[other] увеличить
    } эффективность растения на {$increase} вплоть до максимума в {$limit}. Растение теряет семена, когда эффективность достигает {$seedlesstreshold}. Попытка повысить эффективность выше {$limit} может привести к снижению урожайности с шансом 10%

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] Восстанавливает
        *[other] восстановить
    } семена растения

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] Удаляет
        *[other] удалить
    } семена растения

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] Мутирует
        *[other] мутировать
    } растение, чтобы оно производило {$name}
