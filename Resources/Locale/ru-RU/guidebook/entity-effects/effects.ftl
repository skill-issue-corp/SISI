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
        [1] Восполняет
        *[other] восполнить
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } { $amount ->
        [1] {$entname}
        *[other] «{$entname}», количество: {$amount}
    }

entity-effect-guidebook-destroy =
    { $chance ->
        [1] Уничтожает
        *[other] уничтожить
    } предмет

entity-effect-guidebook-break =
    { $chance ->
        [1] Ломает
        *[other] сломать
    } предмет

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
    } много пены

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] Создаёт
        *[other] создать
    } много дыма

entity-effect-guidebook-satiate =
    { $chance ->
        [1] Восполняет
        *[other] восполнить
    } { $relative ->
        [1] {$type} со средней скоростью
        *[other] {$type} со скоростью {NATURALFIXED($relative, 3)}x от средней
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Исцеляет
                [deals] Наносит
                *[both] Изменяет здоровье на
             }
        *[other] { $healsordeals ->
                    [heals] исцелить
                    [deals] нанести
                    *[both] изменить здоровье на
                 }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] Равномерно исцеляет
            [deals] Равномерно наносит
            *[both] Равномерно изменяет здоровье на
        }
        *[other] { $healsordeals ->
            [heals] равномерно исцелить
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
                 } эффект «{$key}» не менее чем на {guidebook-duration-seconds} без накопления длительности
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } эффект «{$key}» не менее чем на {guidebook-duration-seconds} с накоплением длительности
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } эффект «{$key}» на {guidebook-duration-seconds} без накопления длительности
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {guidebook-duration-seconds} длительности эффекта «{$key}»
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                 } эффект «{$key}» не менее чем на {guidebook-duration-seconds} без накопления длительности
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } эффект «{$key}» не менее чем на {guidebook-duration-seconds} с накоплением длительности
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } эффект «{$key}» не менее чем на {guidebook-duration-seconds} без накопления длительности
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {guidebook-duration-seconds} длительности эффекта «{$key}»
    } { $delay ->
        [0] сразу
        *[other] спустя {NATURALFIXED($delay, 3)} сек.
    }

# Trauma - removed LOC() from all of these, its already localized
entity-effect-guidebook-status-effect-indef =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                 } постоянный эффект «{$key}»
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } постоянный эффект «{$key}»
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } постоянный эффект «{$key}»
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {$key}
    } { $delay ->
        [0] сразу
        *[other] спустя {NATURALFIXED($delay, 3)} сек.
    }

# Trauma - LOC($key) -> knockdown, copy paste major
entity-effect-guidebook-knockdown =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                    *[other] вызвать
                    } падение не менее чем на {guidebook-duration-seconds} без накопления длительности
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } падение не менее чем на {guidebook-duration-seconds} с накоплением длительности
        *[set]  { $chance ->
                    [1] Вызывает
                    *[other] вызвать
                } падение не менее чем на {guidebook-duration-seconds} без накопления длительности
        [remove]{ $chance ->
                    [1] Убирает
                    *[other] убрать
                } {guidebook-duration-seconds} длительности падения
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Задаёт
        *[other] задать
    } температуру раствора ровно {NATURALFIXED($temperature, 2)} к

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Удаляет
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] удалить
            }
    } тепло { $deltasign ->
                [1] в раствор
                *[-1] из раствора
           }, пока его температура не достигнет значения { $deltasign ->
                [1] не выше {NATURALFIXED($maxtemp, 2)} к
                *[-1] не ниже {NATURALFIXED($mintemp, 2)} к
            }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
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

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Удаляет
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] удалить
            }
    } {NATURALFIXED($amount, 2)} ед. реагентов группы «{$group}» { $deltasign ->
            [1] в раствор
            *[-1] из раствора
        }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Удаляет
            }
        *[other]
            { $deltasign ->
                [1] добавить
                *[-1] удалить
            }
    } {POWERJOULES($amount)} тепла { $deltasign ->
            [1] в организм
            *[-1] из организма
        }, в котором находится реагент

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } заболевание «{ $disease }»

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } заболевания: { $diseases }

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
        [1] Лечит
        *[other] вылечить
    } заболевания

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Наносит
                *[-1] Исцеляет
            }
        *[other]
            { $deltasign ->
                [1] нанести
                *[-1] исцелить
            }
    } повреждения глаз

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
        [one] моль
        [few] моля
        [many] молей
       *[other] моля
    } газа «{ $gas }»

entity-effect-guidebook-drunk =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } опьянение

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] { $stuns ->
            [true] Поражает током
            *[false] Бьёт током
            }
        *[other] { $stuns ->
            [true] поразить током
            *[false] ударить током
            }
    } того, кто усваивает реагент, на {guidebook-duration-seconds}

entity-effect-guidebook-emote =
    { $chance ->
        [1] Заставляет
        *[other] заставить
    } цель выразить эмоцию [bold][color=white]{$emote}[/color][/bold]

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Тушит
        *[other] потушить
    } огонь

# Trauma - $direction is set from the Flammable effect's multiplier sign, so negative Flammable reagents read "Decreases flammability"; defaults to increase
entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] { $direction ->
                [decrease] Снижает
                *[increase] Повышает
            }
        *[other] { $direction ->
                [decrease] снизить
                *[increase] повысить
            }
    } горючесть

entity-effect-guidebook-ignite =
    { $chance ->
        [1] Поджигает
        *[other] поджечь
    } того, кто усваивает реагент

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] Делает
        *[other] сделать
    } того, кто усваивает реагент, разумным

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Превращает
        *[other] превратить
    } того, кто усваивает реагент, в существо: { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Вызывает
                *[-1] Ослабляет
            }
        *[other] { $deltasign ->
                    [1] вызвать
                    *[-1] ослабить
                 }
    } кровотечение

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Повышает
                *[-1] Снижает
            }
        *[other] { $deltasign ->
                    [1] повысить
                    *[-1] снизить
                 }
    } объём крови

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] Парализует
        *[other] парализовать
    } того, кто усваивает реагент не менее чем на {guidebook-duration-seconds}

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Изменяет
        *[other] изменить
    } скорость передвижения с множителем {NATURALFIXED($sprintspeed, 3)}x не менее чем на {guidebook-duration-seconds}

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Временно подавляет
        *[other] временно подавить
    } нарколепсию

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Смывает
        *[other] смыть
    } крем от пирога с лица

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Лечит
        *[other] вылечить
    } зомби-инфекцию

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Заражает
        *[other] заразить
    } цель зомби-инфекцией

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Лечит
        *[other] вылечить
    } зомби-инфекцию и даёт иммунитет к повторному заражению

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Обращает вспять
        *[other] обратить вспять
    } {guidebook-duration-seconds} разложения

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } реакцию с выделением дыма или пены на {NATURALFIXED($duration, 3)} { $duration ->
        [one] секунду
        [few] секунды
        [many] секунд
       *[other] секунды
    }

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Вызывает
        *[other] вызвать
    } добавление реагента «{$reagent}» во внутренний контейнер для раствора

entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] Помогает
        *[other] помочь
        } открыть инопланетный артефакт.

entity-effect-guidebook-artifact-durability-restore =
    Восстанавливает {$restored} ед. прочности активных узлов инопланетного артефакта.

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] Изменяет
        *[other] изменить
    } показатель «{$attribute}» на {$positive ->
    [false] [color=red]{$amount}[/color]
    *[true] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Омолаживает
        *[other] омолодить
    } растение в зависимости от его возраста и срока роста

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Восстанавливает
        *[other] восстановить
    } жизнеспособность растения, которую оно утратило из-за мутации

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] Повышает
        *[other] повысить
    } продолжительность жизни и/или базовое здоровье растения с вероятностью 10% для каждого показателя

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Повышает
        *[other] повысить
    } концентрацию веществ в растении на {$increase} до предела {$limit}. Когда концентрация достигает {$seedlesstreshold}, растение перестаёт давать семена. Попытка повысить концентрацию сверх {$limit} может снизить урожайность с вероятностью 10%

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

entity-effect-guidebook-plant-change-trait =
    { $chance ->
        [1] { $change ->
            [Add] добавляет признак «{$trait}» у
            [Remove] удаляет признак «{$trait}» у
            [Toggle] переключает признак «{$trait}» у
            *[other] изменяет признак «{$trait}» у
        }
        *[other] { $change ->
            [Add] добавить признак «{$trait}» у
            [Remove] удалить признак «{$trait}» у
            [Toggle] переключить признак «{$trait}» у
            *[other] изменить признак «{$trait}» у
        }
    } растения

entity-effect-guidebook-plant-mutate-exude-gasses =
    { $chance ->
        [1] Меняет
        *[other] изменить
    } растение так, что оно выделяет от {$minValue} до {$maxValue} { $maxValue ->
        [one] моля
        [few] молей
        [many] молей
       *[other] моля
    } газа

entity-effect-guidebook-plant-mutate-consume-gasses =
    { $chance ->
        [1] Меняет
        *[other] изменить
    } растение так, что оно поглощает от {$minValue} до {$maxValue} { $maxValue ->
        [one] моля
        [few] молей
        [many] молей
       *[other] моля
    } газа

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] Меняет
        *[other] изменить
    } растение так, что оно вырабатывает «{$name}»
