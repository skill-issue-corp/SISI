# SPDX-FileCopyrightText: 2021 mirrorcult <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2022 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 AJCM-git <60196617+AJCM-git@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Brandon Hu <103440971+Brandon-Huu@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 RiceMar1244 <138547931+RiceMar1244@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 lzk <124214523+lzk228@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Locale for wielding items; i.e. two-handing them

wieldable-verb-text-wield = Взять обеими руками
wieldable-verb-text-unwield = Освободить руку

wieldable-component-successful-wield = Вы берёте { $item } обеими руками.
wieldable-component-failed-wield = Вы освобождаете руку, в которой держали { $item }.
wieldable-component-successful-wield-other = { CAPITALIZE($user) } берёт { $item } обеими руками.
wieldable-component-failed-wield-other = { CAPITALIZE($user) } освобождает руку, в которой держит { $item }.
wieldable-component-blocked-wield = { CAPITALIZE($blocker) } мешает вам взять { $item } обеими руками.

wieldable-component-no-hands = У вас не хватает рук!
wieldable-component-not-enough-free-hands = {$number ->
    [1] Чтобы взять { $item } обеими руками, нужна свободная рука.
    *[other] Чтобы взять { $item } обеими руками, нужно свободных рук: { $number }.
}
wieldable-component-not-in-hands = { CAPITALIZE($item) } у вас в руках нет!

wieldable-component-requires = { CAPITALIZE($item)} нужно держать обеими руками!

gunwieldbonus-component-examine = Это оружие стреляет точнее, если держать его обеими руками.

gunrequireswield-component-examine = Из этого оружия можно стрелять только обеими руками.
