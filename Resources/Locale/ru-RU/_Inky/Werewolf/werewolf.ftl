# im too fucking lazy to make 65 new files for each thing so the most that you will get is path-specific ftl files and one ginormous shared one
collective-mind-lunarmind = ЛунныйРазум
werewolf-beckon-message = {$name} зовёт стаю в «{$location}».

role-subtype-werewolf = Оборотень
objective-issuer-werewolf = Оборотень
guide-entry-werewolf = Боевые Приёмы Оборотня
roles-antag-werewolf-name = Оборотень
roles-antag-werewolf-desc = Заражение или наследственные гены даровали вам проклятие и/или дар Ликантропии! Ну разве вы не особенный?

# SIS-Start
werewolf-role-greeting =
    {"["}gradient angle="45" color1="{$hl1}" color2="{$hl2}" speed="1"]В вашей крови проснулся древний зверь![/gradient]
    Вы поражены проклятием [color={$hl1}]Ликантропии[/color]. Ваше человеческое тело лишь маскировка.
    Накапливайте [color={$hl1}]Ярость[/color], насыщайтесь плотью экипажа и не дайте раскрыть свою истинную сущность раньше времени!

werewolf-role-greeting-desc =
    • [color={$hl1}]Две формы:[/color] копите ярость, поедая органы через [color={$hl1}]Потрошение[/color], чтобы обращаться в форму свирепого волка.
    • [color={$hl1}]Три Пути развития (Магазин):[/color]
    - [color={$hl1}]Лютоволк:[/color] несокрушимый одиночный альфа-хищник, разрывающий жертв в клочья.
    - [color={$hl1}]Чёрный Волк:[/color] вожак стаи, обращающий экипаж в верных волков своим укусом.
    - [color={$hl1}]Белый Волк:[/color] инквизитор Бездны, охотящийся на других оборотней святыми серебряными когтями.
    • [color={$hl1}]Скрытность:[/color] в человеческом облике действуйте скрытно — серебро и оружие службы безопасности смертельны!
# SIS-End

werewolf-round-end-summary = {$name} играет за оборотня. Укушено людей: {$points}.

werewolf-action-fail-hunger = Вы слишком голодны для этого.
werewolf-action-fail-transfurmed = В низшей форме это недоступно.

werewolf-transfurm-block = Что-то мешает вам превратиться...
werewolf-transfurm-cooldown = Мы ещё не готовы. До превращения { $remainingTime } сек.
werewolf-mutation-changed = Вы чувствуете, как меняетесь.
werewolf-devour-fail-werewolf = Пахнет волком... Его нельзя сожрать.
werewolf-devour-start = {$user} вгрызается в руку {$target}!
werewolf-gut-start = {$user} вспарывает туловище {$target}!
werewolf-gut-no-organs-left = Есть нечего.
werewolf-gut-success = {$user} съедает орган {$target}!
werewolf-transfurm-warn = Всё тело болит. Вы вот-вот превратитесь.
werewolf-transfurm-ready = Вы чувствуете, что готовы превратиться.
werewolf-bite-fail-state = Мы не можем это сожрать.
werewolf-bite-fail-bit = Пахнет волком... Тут уже укусили до нас.
werewolf-bite-fail-immune = Что-то мешает вам это сделать.
werewolf-bite-start = {$user} пытается укусить {$target}!
werewolf-bequeath-fail-not-pack = Это не член нашей стаи.
werewolf-bequeath-success = Преемник назначен.
werewolf-bequeath-triggered = Вы чувствуете, что вожак погиб. Вы занимаете его место.
werewolf-ability-upgraded = Вы чувствуете, что стали сильнее.
werewolf-action-regen-success = Вы чувствуете, как ваше тело восстанавливается.
werewolf-gut-fail-mind = Вы выше того, чтобы это есть.
werewolf-black-lunar-popup = Вы начинаете слышать сияние луны.
werewolf-white-lunar-popup = Вы начинаете слышать злых фурри.
werewolf-black-call-success = Отбросьте свою Человечность и поддайтесь инстинктам. Пора показать станции, кто вы на самом деле.
werewolf-black-call-fail-amount = Для этого нужно больше членов стаи!


# i do not fucking care

store-currency-display-fury = Ярость
werewolf-store-choose = Выбрать
werewolf-store-dire = Лютоволк
werewolf-store-white = Белый волк
werewolf-store-black = Чёрный волк
werewolf-store-black-apprentice = Стая
werewolf-store-side = Дополнительные способности

# side

werewolf-store-regen-name = Ускоренный метаболизм
werewolf-store-regen-desc = Ускоряет метаболизм, позволяя быстро восстановиться. Учтите, что это вызывает сильный голод. Можно использовать в человеческом облике.

werewolf-store-jump-name = Засада
werewolf-store-jump-desc = Прыгните на жертву, сбейте её с ног и оглушите.

werewolf-store-gut-name = Потрошение
werewolf-store-gut-desc = Вырвите органы жертвы и съешьте их, чтобы накопить ярость. Приём можно повторять, пока у жертвы остались органы.]

# white

werewolf-store-choose-white-name = Белый волк
werewolf-store-choose-white-desc = Для одних — проклятие. Для других — дар. Для меня — возможность. Я покараю их за скверну.

    Ваша ненависть к оборотням не знает конца. Открывает способности для охоты на тех, кого считают охотниками.
    Святые когти откроют вам путь к вашей истинной сущности и покончат с теми, кто хочет вам навредить.

werewolf-store-white-dmg-name = Серебряные когти
werewolf-store-white-dmg-desc = Ваши атаки наносят дополнительный святой урон. Это позволяет серьёзно ранить других оборотней.

werewolf-store-white-track-name = Ищейка
werewolf-store-white-track-desc = Выследите других Оборотней и пометьте их на Смерть, в какой бы форме они ни были.
    Вы наносите немного больше урона Отмеченным оборотням.

werewolf-store-white-lunar-name = Обострённый слух
werewolf-store-white-lunar-desc = Теперь вам доступен лунный разум, в котором можно слышать переговоры оборотней.

werewolf-store-white-revelation-name = Откровение
werewolf-store-white-revelation-desc = Узнайте личность каждого живого Оборотня и пометьте их на смерть. Оборотни узнают о вашем присутствии.
    После покупки вы превращаетесь навсегда. Обратного пути нет, и магазин станет недоступен.

# dire

werewolf-store-choose-direwolf-name = Лютоволк
werewolf-store-choose-direwolf-desc = Моя воля становится острее. Моё тело — сильнее. Теперь я покажу миру, что такое настоящий страх.

    Повышает скорость передвижения, урон, силу воя и скорость исцеления. Крадите кровь жертв и сейте страх в их жилах.

werewolf-store-howl-direwolf-name = Яростный рёв
werewolf-store-howl-direwolf-desc = Ваш вой становится сильнее, дольше оглушая всех в большем радиусе.

werewolf-store-bite-direwolf-name = Кровоточащий укус
werewolf-store-bite-direwolf-desc = Вонзите клыки в жертву и отнимите 30% её крови. Это значительно исцелит вас.

# black

werewolf-store-choose-black-name = Чёрный волк
werewolf-store-choose-black-desc = Мне дан дар. Пусть добыча станет хищником и вместе мы поднимемся к новой эре. Чёрные как ночь, мы охотимся до конца.

    Вы станете медленнее, но сильнее.
    Открывает магазин чёрного пути, заточенный под превращение членов экипажа в подвластных вам оборотней.
    Расширяйте стаю, подчиняйте экипаж и захватите власть над станцией.

werewolf-store-bite-black-name = Проклятый укус
werewolf-store-bite-black-desc = Укусите жертву, вызвав сильную кровопотерю. Через десять минут жертва с вероятностью 50% превратится в подвластного вам оборотня.

werewolf-store-black-lunar-name = Разум стаи
werewolf-store-black-lunar-desc = Открывает доступ к лунному разуму для общения со своей стаей. Учтите, вас могут услышать другие.

werewolf-store-black-order-name = Приказ вожака
werewolf-store-black-order-desc = Заменяет вой. Ваш вой теперь принудительно обращает оборотней вашей стаи и исцеляет уже обратившихся, если они поблизости.

werewolf-store-black-bequeath-name = Назначить преемника
werewolf-store-black-bequeath-desc = Назначьте оборотня из своей стаи следующим вожаком на случай вашей смерти. Одноразовая способность.

werewolf-store-black-beckon-name = Созвать стаю
werewolf-store-black-beckon-desc = Передаёт ваше текущее местоположение в лунный разум.

werewolf-black-call-name = Зов
werewolf-black-call-desc = Последняя ступень принятия истинной формы. Для активации нужны как минимум 4 члена стаи.
    После применения вы и вся ваша стая превратитесь НАВСЕГДА, а ваше здоровье удвоится.
    Устанавливает фиолетовый код на станции. Одноразовая способность.

# hell

werewolf-store-choose-hell-name = Адская Гончая
werewolf-store-choose-hell-desc = Ярость. Ад. Кровь. Я несу смерть, я гончая Жнеца. Спустите псов войны с цепи.

    Вы становитесь невосприимчивы к огню. Ваши когти наносят меньше урона, но дальнейшие улучшения позволят вам поджигать цели.
    Ваш вой поджигает всех поблизости, а при «Засаде» вы оставляете за собой огненный след.
    Вы становитесь гораздо уязвимее к холоду и немного уязвимее к обычным боеприпасам, зато лучше переносите попадания лазеров.
    Святой урон ранит вас чуть сильнее, и ещё Вы Светитесь!

werewolf-store-hell-burn-name = Тысяча Градусов
werewolf-store-hell-burn-desc = Теперь ваши когти поджигают людей при ударе. Вы также светитесь чуть ярче.

werewolf-store-jump-hell-name = Рвануть И Сжечь
werewolf-store-jump-hell-desc = Рванитесь вперёд. Во время рывка и ещё недолго после него ваши шаги оставляют огненный след.

werewolf-store-howl-hell-name = Сбор Проклятых
werewolf-store-howl-hell-desc = Теперь ваш вой поджигает всех, на кого действует!

werewolf-store-banish-name = Изгнание
werewolf-store-banish-desc = Выбранная вами цель ненадолго окажется парализована. Чем сильнее она горит, тем дольше длится оглушение. Оно может длиться в 10 раз дольше обычного.

    (можно применить в человеческом облике)

werewolf-store-hell = Буквально Сатана
