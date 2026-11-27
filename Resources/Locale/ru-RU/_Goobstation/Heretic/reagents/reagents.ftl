reagent-name-eldritch = потусторонняя эссенция
reagent-desc-eldritch = Странная жидкость, неподвластная законам физики. Восстанавливает силы и исцеляет тех, кто видит за пределами хрупкой реальности, но крайне вредна для людей с узким кругозором.

reagent-name-crucible-soul = душа горнила
reagent-desc-crucible-soul = Ярко-оранжевая полупрозрачная жидкость. Позволяет проходить сквозь стены. По окончании действия возвращает вас в исходное место.

reagent-name-clarity = закат и рассвет
reagent-desc-clarity = Тускло-жёлтая жидкость. Она будто то исчезает, то снова появляется. Позволяет видеть сквозь стены и предметы.

reagent-name-marshal = раненый солдат
reagent-desc-marshal = Бесцветная тёмная жидкость. Увеличивает физическую силу. Чем сильнее вы ранены, тем яростнее ваши удары и тем меньше урона вы получаете. Удары в ближнем бою восстанавливают здоровье и выносливость, но вы постепенно получаете урон, и чем вы здоровее, тем больше этот урон.

reagent-name-ether = эфир новорождённого
reagent-desc-ether = Густая зелёная жидкость, вызывающая тошноту. Полностью восстанавливает ваше тело, а затем погружает в глубокий сон на целую минуту.

reagent-name-eldritch-rust = потусторонняя ржавчина
reagent-desc-eldritch-rust = Вязкая бурая жижа с комками.

entity-condition-guidebook-heretic-or-ghoul = цель — еретик или гуль
entity-condition-guidebook-not-heretic-or-ghoul = цель не еретик и не гуль

entity-condition-guidebook-environment-temperature = температура окружающей среды составляет
    { $invert ->
        [true] не менее
        *[false] не более
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
        [true] не наложен
        *[false] наложен
    } эффект «{$effect}»

entity-condition-guidebook-nullrod-protected = цель защищена нуль-жезлом
entity-condition-guidebook-nullrod-not-protected = цель не защищена нуль-жезлом

reagent-effect-guidebook-deconvert-ghoul = деконвертирует гуля

reagent-physical-desc-eldritch = потусторонняя
reagent-physical-desc-crucible-soul = нездешняя
reagent-physical-desc-clarity = прозрачная
reagent-physical-desc-marshal = мучительная
reagent-physical-desc-ether = притупляющая чувства
reagent-physical-desc-rusty = ржавая

flavor-complex-eldritch = Ag'hsj'saje'sh
flavor-complex-crucible-soul = как нечто меж измерениями
flavor-complex-clarity = как глаза
flavor-complex-marshal = больно
flavor-complex-ether = освежающе
flavor-complex-rust = как прогнившая медь

crucible-soul-effect-examine-message =
    {"["}color=#fb793a]{ CAPITALIZE(SUBJECT($ent)) } { GENDER($ent) ->
        [epicene] словно
       *[other] словно
    } не здесь.[/color]

wounded-solider-effect-examine-message = [color=#5e718e]{ CAPITALIZE(SUBJECT($ent)) } { CONJUGATE-BE($ent) } в состоянии неугасающей ярости.[/color]
