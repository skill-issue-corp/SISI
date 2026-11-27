# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

### Voting system related console commands

## 'createvote' command

cmd-createvote-desc = Создаёт голосование
cmd-createvote-help = Использование: createvote <'restart'|'preset'|'map'>
cmd-createvote-cannot-call-vote-now = Сейчас вы не можете начать голосование!
cmd-createvote-invalid-vote-type = Недопустимый тип голосования
cmd-createvote-arg-vote-type = <тип голосования>

## 'customvote' command

cmd-customvote-desc = Создаёт настраиваемое голосование
cmd-customvote-help = Использование: customvote <заголовок> <вариант1> <вариант2> [вариант3...]
cmd-customvote-on-finished-tie = Голосование «{$title}» завершилось ничьей между {$ties}!
cmd-customvote-on-finished-win = Голосование «{$title}» завершилось! Победитель: {$winner}!
cmd-customvote-arg-title = <заголовок>
cmd-customvote-arg-option-n = <вариант{ $n }>

## 'vote' command

cmd-vote-desc = Отдаёт голос в текущем голосовании
cmd-vote-help = vote <voteId> <option>
cmd-vote-cannot-call-vote-now = Сейчас вы не можете начать голосование!
cmd-vote-on-execute-error-must-be-player = Команда доступна только игрокам
cmd-vote-on-execute-error-invalid-vote-id = Недопустимый ID голосования
cmd-vote-on-execute-error-invalid-vote-options = Недопустимые варианты голосования
cmd-vote-on-execute-error-invalid-vote = Недопустимое голосование
cmd-vote-on-execute-error-invalid-option = Недопустимый вариант

## 'listvotes' command

cmd-listvotes-desc = Показывает текущие голосования
cmd-listvotes-help = Использование: listvotes

## 'cancelvote' command

cmd-cancelvote-desc = Отменяет текущее голосование
cmd-cancelvote-help = Использование: cancelvote <id>
                      ID можно узнать с помощью команды listvotes.
cmd-cancelvote-error-invalid-vote-id = Недопустимый ID голосования
cmd-cancelvote-error-missing-vote-id = Отсутствует ID
cmd-cancelvote-arg-id = <id>
