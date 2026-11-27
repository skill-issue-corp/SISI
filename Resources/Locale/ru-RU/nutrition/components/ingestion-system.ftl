### Interaction Messages

# System

## When trying to ingest without the required utensil... but you gotta hold it
ingestion-you-need-to-hold-utensil = Чтобы съесть это, возьмите {$utensil}!

ingestion-try-use-is-empty = {CAPITALIZE($entity)} пусто!
ingestion-try-use-wrong-utensil = Нельзя {$verb} «{$food}» этим прибором: {$utensil}.

ingestion-remove-mask = Сначала снимите {$entity}.

## Failed Ingestion

ingestion-you-cannot-ingest-any-more = Вы больше не можете {$verb}!
ingestion-other-cannot-ingest-any-more = {CAPITALIZE(SUBJECT($target))} больше не может {$verb}!

ingestion-cant-digest = Вы не можете переварить {$entity}!
ingestion-cant-digest-other = {CAPITALIZE(SUBJECT($target))} не может переварить {$entity}!

## Action Verbs, not to be confused with Verbs

ingestion-verb-food = Съесть
ingestion-verb-drink = Выпить

# Edible Component

-edible-satiated = { $satiated ->
    [true] {" "}Кажется, вы больше не можете { $verb }.
  *[false] {""}
}

edible-nom = Ням. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "есть") }
edible-nom-other = Ням.
edible-slurp = Хлюп. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "пить") }
edible-slurp-other = Хлюп.
edible-swallow = Вы проглатываете { $food }.{ -edible-satiated(satiated: $satiated, verb: "глотать") }
edible-gulp = Глоть. {$flavors}
edible-gulp-other = Глоть.

edible-has-used-storage = Нельзя {$verb} «{ $food }», пока внутри лежит предмет.

## Nouns

edible-noun-edible = съестное
edible-noun-food = еда
edible-noun-drink = напиток
edible-noun-pill = таблетка

## Verbs

edible-verb-edible = употребить
edible-verb-food = есть
edible-verb-drink = пить
edible-verb-pill = глотать

## Force feeding

edible-force-feed = {CAPITALIZE($user)} пытается заставить вас что-то {$verb}!
edible-force-feed-success = {CAPITALIZE($user)} заставляет вас что-то {$verb}! {$flavors}{ -edible-satiated(satiated: $satiated, verb: $verb) }
edible-force-feed-success-user = Вы кормите {$target}
