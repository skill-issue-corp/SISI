nukeops-title = Ядерные Оперативники
nukeops-description = Ядерные оперативники нацелились на станцию. Защищайте ядерный диск, чтобы помешать им активировать и взорвать ядерную бомбу!

# SIS-Start
nukeops-role-greeting =
    Вы [color={$hl1}]Ядерный Оперативник[/color].
    Ваша задача — взорвать [color={$hl1}]{$station}[/color] и убедиться, что от неё осталась лишь груда обломков.
    Ваше руководство, [color={$hl1}]Синдикат[/color], снабдило вас всем необходимым для выполнения этой задачи.

    Операция «[color={$hl1}]{$name}[/color]» началась! [color={$hl1}]Смерть NanoTrasen![/color]

nukeops-role-greeting-desc =
    Ваши задачи просты: [color={$hl1}]доставить бомбу[/color] и убраться до того, как она взорвётся.

    {"["}color={$hl1}]Начинайте миссию.[/color]
# SIS-End

nukeops-briefing = Ваша задача проста. Доставьте заряд и уходите, пока он не взорвался. Приступайте к заданию.

nukeops-opsmajor = [color=crimson]Полная победа Синдиката![/color]
nukeops-opsminor = [color=crimson]Частичная победа Синдиката![/color]
nukeops-neutral = [color=yellow]Нейтральный исход![/color]
nukeops-crewminor = [color=green]Частичная победа экипажа![/color]
nukeops-crewmajor = [color=green]Полная победа экипажа![/color]

nukeops-cond-nukeexplodedoncorrectstation = Ядерным оперативникам удалось взорвать станцию.
nukeops-cond-nukeexplodedonnukieoutpost = База ядерных оперативников уничтожена ядерным взрывом!
nukeops-cond-nukeexplodedonincorrectlocation = Ядерная бомба взорвалась за пределами станции.
nukeops-cond-nukeactiveinstation = Активированная ядерная бомба осталась на станции.
nukeops-cond-nukeactiveatcentcom = Ядерную бомбу активировали и доставили в Центральное Командование!
nukeops-cond-nukediskoncentcom = Экипаж эвакуировался с диском ядерной аутентификации.
nukeops-cond-nukedisknotoncentcom = Экипаж бросил диск ядерной аутентификации.
nukeops-cond-nukiesabandoned = Ядерных оперативников бросили.
nukeops-cond-allnukiesdead = Все ядерные оперативники погибли.
nukeops-cond-somenukiesalive = Часть ядерных оперативников погибла.
nukeops-cond-allnukiesalive = Все ядерные оперативники выжили.

nukeops-disk-location-title = Последнее местонахождение Диска:
nukeops-disk-carried-by = {" "}у [color=White]{$name}[/color], [color=orange]{$job}[/color], {$location} { $user ->
    [unknown] { "" }
    *[other] ([color=gray]{$user}[/color])
}

storage-hierarchy-list = { $items-left ->
  [0] { $existing-text } { $item },
  *[other] { $existing-text } { $item }, внутри:
}

nukeops-list-start = Ядерные оперативники:
nukeops-list-name = - [color=White]{$name}[/color]
nukeops-list-name-user = - [color=White]{$name}[/color] ([color=gray]{$user}[/color])
nukeops-not-enough-ready-players = Недостаточно готовых игроков! Готово {$readyPlayersCount} из {$minimumPlayers} необходимых. Не удалось запустить режим «Ядерные Оперативники».
nukeops-no-one-ready = Никто из игроков не готов! Не удалось запустить режим «Ядерные Оперативники».

nukeops-role-commander = Командир
nukeops-role-agent = Санитар
nukeops-role-operator = Оперативник

nukeops-roundend-name = ядерный оперативник
