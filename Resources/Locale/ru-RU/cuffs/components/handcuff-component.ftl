# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 freeman2651 <104049107+freeman2651@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 AJCM-git <60196617+AJCM-git@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DadeKuma <mattafix68@gmail.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 brainfood1183 <113240905+brainfood1183@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Brandon Hu <103440971+Brandon-Huu@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 nikthechampiongr <32041239+nikthechampiongr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

handcuff-component-target-self = Вы начинаете связывать себя.
handcuff-component-cuffs-broken-error = Путы сломаны!
handcuff-component-target-has-no-hands-error = У {$targetName} нет рук!
handcuff-component-target-has-no-free-hands-error = У {$targetName} нет свободных рук!
handcuff-component-too-far-away-error = Вы слишком далеко, чтобы надеть путы!
handcuff-component-start-cuffing-observer = {$user} начинает связывать {$target}!
handcuff-component-start-cuffing-self-observer = {$user} начинает связывать {REFLEXIVE($target)}.
handcuff-component-start-cuffing-target-message = Вы начинаете связывать {$targetName}.
handcuff-component-start-cuffing-by-other-message = {$otherName} начинает связывать вас!
handcuff-component-cuff-observer-success-message = {$user} связывает {$target}.
handcuff-component-cuff-self-observer-success-message = {$user} связывает {REFLEXIVE($target)}.
handcuff-component-cuff-other-success-message = Вы связываете {$otherName}.
handcuff-component-cuff-by-other-success-message = {$otherName} связывает вас!
handcuff-component-cuff-self-success-message = Вы связываете себя.
handcuff-component-cuff-interrupt-message = Вам мешают связать {$targetName}!
handcuff-component-cuff-interrupt-other-message = Вы мешаете {$otherName}, пока { SUBJECT($otherEnt) } { CONJUGATE-BE($otherEnt) }пытается вас связать!
handcuff-component-cuff-interrupt-self-message = Вам помешали связать себя.
handcuff-component-cuff-interrupt-buckled-message = Вы не можете пристегнуться, пока связаны!
handcuff-component-cuff-interrupt-unbuckled-message = Вы не можете отстегнуться, пока связаны!
handcuff-component-cannot-drop-cuffs = Вам не удаётся надеть путы на {$target}.
