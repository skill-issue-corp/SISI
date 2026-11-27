# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

reagent-effect-condition-guidebook-stamina-damage-threshold =
    { $max ->
        [2147483648] цель получила не менее {NATURALFIXED($min, 2)} ед. урона выносливости
        *[other] { $min ->
                    [0] цель получила не более {NATURALFIXED($max, 2)} ед. урона выносливости
                    *[other] цель получила от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед. урона выносливости
                 }
    }

reagent-effect-condition-guidebook-unique-bloodstream-chem-threshold =
    { $max ->
        [2147483648] { $min ->
                        [one] присутствует не менее {$min} реагента
                        *[other] присутствует не менее {$min} реагентов
                     }
        [1] { $min ->
               [0] присутствует не более {$max} реагента
               *[other] присутствует от {$min} до {$max} реагента
            }
        *[other] { $min ->
                    [-1] присутствует не более {$max} {sis-guidebook-reagent-count-genitive}
                    *[other] присутствует от {$min} до {$max} {sis-guidebook-reagent-count-genitive}
                 }
    }

reagent-effect-condition-guidebook-typed-damage-threshold = цель получила не более { $changes } ед. урона
