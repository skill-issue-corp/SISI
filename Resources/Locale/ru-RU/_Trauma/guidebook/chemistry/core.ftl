## no reagent stuff and no trailing "." at the end
guidebook-nested-effect-description =
    {$chance ->
        [1] { $effect }
        *[other] С вероятностью { NATURALPERCENT($chance, 2) } может { $effect }
    }{ $conditionCount ->
        [0] {""}
        *[other] {" "}при условии { $conditions }
    }
