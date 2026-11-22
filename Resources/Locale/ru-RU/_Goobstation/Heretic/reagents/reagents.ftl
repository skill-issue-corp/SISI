reagent-name-eldritch = жуткая эссенция
reagent-desc-eldritch = Странная жидкость, нарушающая законы физики. Заряжает энергией и исцеляет тех, кто способен заглянуть за пределы хрупкой реальности, но невероятно опасна для неверных.

reagent-name-crucible-soul = душа горнила
reagent-desc-crucible-soul = Ярко-оранжевая полупрозрачная жидкость. Позволяет проходить сквозь стены. Когда действие заканчивается, вас телепортирует обратно.

reagent-name-clarity = сумерки и рассвет
reagent-desc-clarity = Тускло-жёлтая жидкость. Кажется, она то появляется, то исчезает через равные промежутки времени. Позволяет видеть сквозь стены и предметы.

reagent-name-marshal = раненый солдат
reagent-desc-marshal = Бесцветная тёмная жидкость. Придаёт физическую силу. Чем сильнее вы ранены, тем яростнее ваши удары и тем меньше урона вы получаете. Удары в ближнем бою восстанавливают здоровье и выносливость, но со временем вы получаете урон. Чем крепче ваше здоровье, тем выше этот урон.

reagent-name-ether = эфир новорождённого
reagent-desc-ether = Густая зелёная жидкость, вызывающая тошноту. Полностью восстанавливает тело, затем погружает в глубокий сон на целую минуту.

reagent-name-eldritch-rust = потусторонняя ржавчина
reagent-desc-eldritch-rust = Вязкая коричневая жижа с комками.

entity-condition-guidebook-heretic-or-ghoul = цель — еретик или гуль
entity-condition-guidebook-not-heretic-or-ghoul = цель не является еретиком или гулем

entity-condition-guidebook-environment-temperature = температура среды
    { $invert ->
        [true] не ниже
        *[false] не выше
    } {$threshold} градусов

entity-condition-guidebook-has-body-part = у цели
    { $invert ->
        [true] отсутствует
        *[false] есть
    } {$part}

entity-condition-guidebook-on-fire = цель
    { $invert ->
        [true] не горит
        *[false] горит
    }

reagent-effect-guidebook-has-status-effect =
    { $invert ->
        [true] отсутствует
        *[false] присутствует
    } эффект состояния {$effect}

entity-condition-guidebook-nullrod-protected = цель защищена нуль-жезлом
entity-condition-guidebook-nullrod-not-protected = цель не защищена нуль-жезлом

reagent-effect-guidebook-deconvert-ghoul = снимает превращение в гуля

reagent-physical-desc-eldritch = жуткая
reagent-physical-desc-crucible-soul = потусторонняя
reagent-physical-desc-clarity = прозрачное
reagent-physical-desc-marshal = мучительное
reagent-physical-desc-ether = вызывающее онемение
reagent-physical-desc-rusty = ржавое

flavor-complex-eldritch = Вл'к'с'ла
flavor-complex-crucible-soul = как нечто между измерениями
flavor-complex-clarity = как глаза
flavor-complex-marshal = болезненно
flavor-complex-ether = освежающее
flavor-complex-rust = как гнилая медь

crucible-soul-effect-examine-message =
    {"["}color=#fb793a]{ CAPITALIZE(SUBJECT($ent)) }, похоже, { GENDER($ent) ->
        [epicene] не совсем
       *[other] не совсем
    } здесь.[/color]

wounded-solider-effect-examine-message = [color=#5e718e]{ CAPITALIZE(SUBJECT($ent)) } { CONJUGATE-BE($ent) } в состоянии неугасимой ярости.[/color]
