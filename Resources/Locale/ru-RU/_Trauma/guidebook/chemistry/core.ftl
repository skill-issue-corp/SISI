## no reagent stuff and no trailing "." at the end
guidebook-nested-effect-description =
    {$chance ->
        [1] { $effect }
        *[other] С вероятностью { NATURALPERCENT($chance, 2) } { $effect }
    }{ $conditionCount ->
        [0] {""}
        *[other] {" "}когда { $conditions }
    }
