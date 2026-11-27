# SPDX-FileCopyrightText: 2022 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

multi-handed-item-pick-up-fail = {$number ->
    [1] Чтобы поднять { $item }, нужна ещё одна свободная рука.
    *[other] Чтобы поднять { $item }, нужно ещё свободных рук: { $number }.
}
