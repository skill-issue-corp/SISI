guidebook-reagent-effect-description =
    {$quantity ->
        [0] {""}
        *[other] Если присутствует не менее {$quantity} ед. реагента «{$reagent}»,{" "}
    }{$chance ->
        [1] { $effect }
        *[other] С вероятностью { NATURALPERCENT($chance, 2) } может { $effect }
    }{ $conditionCount ->
        [0] .
        *[other] {" "}при условии, что { $conditions }.
    }

guidebook-reagent-name = [bold][color={$color}]{CAPITALIZE($name)}[/color][/bold]
guidebook-reagent-recipes-header = Рецепт
guidebook-reagent-recipes-reagent-display = [bold]{$reagent}[/bold] \[{$ratio}\]
guidebook-reagent-sources-header = Источники
guidebook-reagent-sources-ent-wrapper = [bold]{$name}[/bold] \[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{$name} (газ)[/bold] \[1\]
guidebook-reagent-effects-header = Эффекты
guidebook-reagent-effects-metabolism-stage-rate = [bold]{$stage}[/bold] [color=gray]({$rate} ед. в секунду)[/color]
guidebook-reagent-effects-metabolite-item = {$reagent} с коэффициентом { NATURALPERCENT($rate, 2) }
guidebook-reagent-effects-metabolites = При метаболизме образуется: { $items }.
guidebook-reagent-plant-metabolisms-header = Метаболизм Растений
guidebook-reagent-plant-metabolisms-rate = [bold]Метаболизм Растений[/bold] [color=gray](базовая скорость: 1 ед. за 3 сек.)[/color]
guidebook-reagent-physical-description = [italic]Похоже на {$description}.[/italic]
guidebook-reagent-recipes-mix-info = {$minTemp ->
    [0] {$hasMax ->
            [true] {CAPITALIZE($verb)} ниже {NATURALFIXED($maxTemp, 2)}К
            *[false] {CAPITALIZE($verb)}
        }
    *[other] {CAPITALIZE($verb)} {$hasMax ->
            [true] между {NATURALFIXED($minTemp, 2)}К и {NATURALFIXED($maxTemp, 2)}К
            *[false] выше {NATURALFIXED($minTemp, 2)}К
        }
}
