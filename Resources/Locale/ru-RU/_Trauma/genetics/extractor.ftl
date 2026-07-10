genome-extractor-examine = {$empty ->
    [true] Он пуст и готов к использованию.
    *[other] Внутри него хранится геном.
}

genome-extractor-fail-full = {CAPITALIZE(THE($item))} {$item} уже заполнен генетическим материалом!
genome-extractor-fail-dead = {CAPITALIZE($target)} мёртв!
genome-extractor-fail-genetic = Гены {POSS-ADJ($target)} повреждены!
