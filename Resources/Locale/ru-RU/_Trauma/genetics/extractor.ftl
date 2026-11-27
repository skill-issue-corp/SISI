genome-extractor-examine = {$empty ->
    [true] Пуст и готов к применению.
    *[other] Внутри хранится геном.
}

genome-extractor-fail-full = {CAPITALIZE($item)} {$item} уже заполнен генетическим материалом!
genome-extractor-fail-dead = {CAPITALIZE($target)} мёртв!
genome-extractor-fail-genetic = Гены {CAPITALIZE(POSS-ADJ($target))} повреждены!
