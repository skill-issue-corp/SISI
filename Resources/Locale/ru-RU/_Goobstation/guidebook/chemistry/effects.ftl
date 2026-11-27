# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Aviu00 <93730715+Aviu00@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

reagent-effect-guidebook-deal-stamina-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Наносит
                *[-1] Восстанавливает
            }
        *[other]
            { $deltasign ->
                [1] наносит
                *[-1] восстанавливает
            }
    } { $amount } { $immediate ->
                    [true] сразу
                    *[false] постепенно
                  } ед. урона выносливости

reagent-effect-guidebook-stealth-entities = Маскирует живых существ поблизости.

reagent-effect-guidebook-change-faction = Меняет фракцию существа на {$faction}.

reagent-effect-guidebook-mutate-plants-nearby = Вызывает случайные мутации растений поблизости.

reagent-effect-guidebook-dnascramble = Перемешивает ДНК персонажа.

reagent-effect-guidebook-change-species = Превращает цель в представителя вида {$species}.

reagent-effect-guidebook-change-species-random = Превращает цель в представителя случайного вида.

reagent-effect-guidebook-immunity-modifier =
    { $chance ->
        [1] Изменяет
        *[other] изменяет
    } скорость выработки иммунитета на {NATURALFIXED($gainrate, 5)}, силу на {NATURALFIXED($strength, 5)} не менее чем на {guidebook-duration-seconds}

reagent-effect-guidebook-disease-progress-change =
    { $chance ->
        [1] Изменяет
        *[other] изменяет
    } течение болезней типа {$type} на {NATURALFIXED($amount, 5)}

reagent-effect-guidebook-disease-mutate = Вызывает мутации болезней на {NATURALFIXED($amount, 4)}
