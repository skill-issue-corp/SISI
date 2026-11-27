# Poggers examine system

examine-name = Это [bold]{$name}[/bold]!
examine-name-selfaware = Это вы!
examine-can-see = Осматривая {OBJECT($ent)}, вы видите:
examine-can-see-nothing = {CAPITALIZE(SUBJECT($ent))} совсем без одежды!
examine-border-line = ═════════════════════
examine-present-tex = Это [enttex id={$id} size={ $size }/] [bold]{$name}[/bold]!
examine-present = Это [bold]{$name}[/bold]!
examine-present-line = ═══

# TODO: change this dogshit to just map from item slot to string and do the formatting separately
id-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} поясе.
head-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} голове.
eyes-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} глазах.
mask-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} лице.
neck-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} шее.
ears-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} ушах.
jumpsuit-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} {SUBJECT($ent)} носит в качестве формы.
outer-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} теле.
suitstorage-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} плече.
back-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} спине.
gloves-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} руках.
belt-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} поясе.
shoes-examine = • {CAPITALIZE(POSS-ADJ($ent))} снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на {POSS-ADJ($ent)} ногах.

id-card-examine-full = • {CAPITALIZE(POSS-ADJ($wearer))} УДОСТОВЕРЕНИЕ: [bold]{$nameAndJob}[/bold].

# Selfaware version

examine-can-see-selfaware = Осмотрев себя, вы видите:
examine-can-see-nothing-selfaware = На вас совсем нет одежды!

id-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашем поясе.
head-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашей голове.
eyes-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на ваших глазах.
mask-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашем лице.
neck-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашей шее.
ears-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на ваших ушах.
jumpsuit-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вас в качестве формы.
outer-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашем теле.
suitstorage-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашем плече.
back-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашей спине.
gloves-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на ваших руках.
belt-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на вашем поясе.
shoes-examine-selfaware = • Ваше снаряжение: { $id ->
     [empty] [bold]{$item}[/bold]
    *[other] [enttex id={$id} size={ $size }/][bold]{$item}[/bold]
} на ваших ногах.

# Selfaware examine

comp-hands-examine-empty-selfaware = В руках у вас ничего нет.
comp-hands-examine-selfaware = Вы держите { $items }.

humanoid-appearance-component-examine-selfaware = Вы - { $age } { $species }.
