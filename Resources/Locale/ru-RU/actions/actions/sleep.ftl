# SPDX-FileCopyrightText: 2022 Rane <60792108+Elijahrane@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 metalgearsloth <comedian_vs_clown@hotmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

action-name-wake = Проснуться

sleep-onomatopoeia = Хр-р-р...
sleep-examined = [color=lightblue]{CAPITALIZE(SUBJECT($target))} {CONJUGATE-BE($target)}спит.[/color]

wake-other-success = Вы трясёте {$target} и будите.
wake-other-failure = Вы трясёте {$target}, но {SUBJECT($target)} {CONJUGATE-BE($target)}не просыпается.
