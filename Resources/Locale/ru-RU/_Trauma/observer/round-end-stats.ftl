observer-statistic-popularity = {$name ->
    [noone] В этом раунде ни за кем не наблюдали.
    *[other] За [color=#B0B0B0]{$name}[/color]([color=gray]{$username}[/color]) в какой-то момент наблюдали. Всего: {$count} {$count ->
        [one] наблюдатель
        [few] наблюдателя
        *[many] наблюдателей
        }. Интересно, что там случилось?
}
