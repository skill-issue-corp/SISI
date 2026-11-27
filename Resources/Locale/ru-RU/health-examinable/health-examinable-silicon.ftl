# SPDX-FileCopyrightText: 2023 Doru991 <75124791+Doru991@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

health-examinable-silicon-none = Видимых повреждений нет.

health-examinable-silicon-Blunt-25 = [color=red]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } небольшие вмятины на { POSS-ADJ($target) } шасси.[/color]
health-examinable-silicon-Blunt-50 = [color=crimson]{ CAPITALIZE(POSS-ADJ($target)) } шасси сильно помято![/color]
health-examinable-silicon-Blunt-75 = [color=crimson]{ CAPITALIZE(POSS-ADJ($target)) } шасси почти полностью смято внутрь![/color]

health-examinable-silicon-Slash-10 = [color=red]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } несколько мелких царапин.[/color]
health-examinable-silicon-Slash-25 = [color=red]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } глубокие царапины на { POSS-ADJ($target) } шасси.[/color]
health-examinable-silicon-Slash-50 = [color=crimson]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } глубокие рассечения по всей { POSS-ADJ($target) } обшивке![/color]
health-examinable-silicon-Slash-75 = [color=crimson]{ CAPITALIZE(POSS-ADJ($target)) } шасси изодрано![/color]

health-examinable-silicon-Piercing-50 = [color=crimson]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } большие пробоины по всему { POSS-ADJ($target) } шасси![/color]

health-examinable-silicon-Heat-25 = [color=orange]{ CAPITALIZE(SUBJECT($target)) } { CONJUGATE-HAVE($target) } поверхностные ожоги по всему { POSS-ADJ($target) } шасси.[/color]
health-examinable-silicon-Heat-50 = [color=orange]{ CAPITALIZE(POSS-ADJ($target)) } шасси сильно обуглено.[/color]
health-examinable-silicon-Heat-75 = [color=orange]{ CAPITALIZE(POSS-ADJ($target)) } шасси частично расплавилось![/color]

health-examinable-silicon-Shock-50 = [color=lightgoldenrodyellow]{ CAPITALIZE(POSS-ADJ($target)) } схемы, похоже, частично сгорели![/color]
