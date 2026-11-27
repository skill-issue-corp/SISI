contraband-examine-text-Minor =
    { $type ->
        *[item] [color={$color}]Этот предмет считается мелкой контрабандой.[/color]
        [reagent] [color={$color}]Этот реагент считается мелкой контрабандой.[/color]
    }

contraband-examine-text-Restricted =
    { $type ->
        *[item] [color={$color}]Этот предмет доступен только соответствующим отделам.[/color]
        [reagent] [color={$color}]Этот реагент доступен только соответствующим отделам.[/color]
    }

contraband-examine-text-Restricted-department =
    { $type ->
        *[item] [color={$color}]Этот предмет могут иметь только следующие отделы: {$departments}. В остальных случаях он может считаться контрабандой.[/color]
        [reagent] [color={$color}]Этот реагент могут иметь только следующие отделы: {$departments}. В остальных случаях он может считаться контрабандой.[/color]
    }

contraband-examine-text-Major =
    { $type ->
        *[item] [color={$color}]Этот предмет считается крупной контрабандой.[/color]
        [reagent] [color={$color}]Этот реагент считается крупной контрабандой.[/color]
    }

contraband-examine-text-GrandTheft =
    { $type ->
        *[item] [color={$color}]Этот предмет представляет особую ценность для агентов Синдиката![/color]
        [reagent] [color={$color}]Этот реагент представляет особую ценность для агентов Синдиката![/color]
    }

contraband-examine-text-Highly-Illegal =
    { $type ->
        *[item] [color={$color}]Хранение этого предмета строго запрещено. Это контрабанда![/color]
        [reagent] [color={$color}]Хранение этого реагента строго запрещено. Это контрабанда![/color]
    }

contraband-examine-text-Syndicate =
    { $type ->
        *[item] [color={$color}]Этот предмет — строго запрещённая контрабанда Синдиката![/color]
        [reagent] [color={$color}]Этот реагент — строго запрещённая контрабанда Синдиката![/color]
    }

contraband-examine-text-Magical =
    { $type ->
        *[item] [color={$color}]Этот предмет — строго запрещённая магическая контрабанда![/color]
        [reagent] [color={$color}]Этот реагент — строго запрещённая магическая контрабанда![/color]
    }

contraband-examine-text-avoid-carrying-around = [color=red][italic]Пожалуй, не стоит открыто носить это с собой без веской причины.[/italic][/color]
contraband-examine-text-in-the-clear = [color=green][italic]Скорее всего, вы можете открыто носить это с собой.[/italic][/color]

contraband-examinable-verb-text = Законность
contraband-examinable-verb-message = Проверить законность этого предмета.

contraband-department-plural = {$department}
contraband-job-plural = {$job}
