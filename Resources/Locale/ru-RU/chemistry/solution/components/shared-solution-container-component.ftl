shared-solution-container-component-on-examine-main-text = Внутри [color={$color}]{$colorName} {$desc}[/color]. { $chemCount ->
    [1] один химикат.
   *[other] смесь химикатов.
    }

examinable-solution-has-recognizable-chemicals = Вы узнаёте в растворе {$recognizedString}.
examinable-solution-recognized = [color={$color}]{$chemical}[/color]

examinable-solution-on-examine-volume = Количество раствора: { $fillLevel ->
    [exact] [color=white]{$current}/{$max} ед.[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-no-max = Количество раствора: { $fillLevel ->
    [exact] [color=white]{$current} ед.[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-puddle = Лужа: { $fillLevel ->
    [exact] [color=white]{$current} ед.[/color].
    [full] огромная и разливается!
    [mostlyfull] огромная и разливается!
    [halffull] глубокая и растекается.
    [halfempty] очень глубокая.
   *[mostlyempty] собирается в одну большую лужу.
    [empty] образует несколько маленьких лужиц.
}

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]Полная Ёмкость[/color]
        [mostlyfull] [color=#DFDFDF]Почти Полная Ёмкость[/color]
        [halffull] [color=#C8C8C8]Половина Ёмкости[/color]
        [halfempty] [color=#C8C8C8]Половина Ёмкости Пуста[/color]
        [mostlyempty] [color=#A4A4A4]Почти Пусто[/color]
       *[empty] [color=gray]Пусто[/color]
    }
