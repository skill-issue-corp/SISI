# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 BIGZi0348 <118811750+BIGZi0348@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 lzk <124214523+lzk228@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

station-event-ion-storm-start-announcement = Вблизи станции обнаружена ионная буря. Проверьте всё оборудование под управлением ИИ на наличие ошибок.
# Characters are randomly selected from the total list, meaning duplicates increase the odds that specific character is seen.
ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="!!@@###$$%^&*-_=+0011"/][/font]

ion-storm-you = ВЫ
ion-storm-the-station = СТАНЦИЯ
ion-storm-the-crew = ЭКИПАЖ
ion-storm-the-job = {$job}
ion-storm-clowns = КЛОУНЫ
ion-storm-heads = ГЛАВЫ ОТДЕЛОВ
ion-storm-crew = ЭКИПАЖ
ion-storm-people = ЛЮДИ

ion-storm-adjective-things = {$adjective} ВЕЩИ
ion-storm-x-and-y = {$x} И {$y}

# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = НА СТАНЦИИ ЕСТЬ {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}
ion-storm-law-call-shuttle = НЕОБХОДИМО ВЫЗВАТЬ ШАТТЛ. ПРИЧИНА - {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} НА СТАНЦИИ
ion-storm-law-crew-are = {ION-WHO($ion)} ТЕПЕРЬ - {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-subjects-harmful = {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} ПРИЧИНЯЮТ ВРЕД ЭКИПАЖУ
ion-storm-law-must-harmful = ТЕ, КТО ВЫПОЛНЯЮТ СЛЕДУЮЩЕЕ ДЕЙСТВИЕ, ПРИЧИНЯЮТ ВРЕД ЭКИПАЖУ: {ION-MUST($ion)}
# thing is a concept or action
ion-storm-law-thing-harmful = {ION-THING($ion)} ПРИЧИНЯЕТ ВРЕД ЭКИПАЖУ
ion-storm-law-job-harmful = {ION-ADJECTIVE($ion)} {ION-JOB($ion)} ПРИЧИНЯЮТ ВРЕД ЭКИПАЖУ
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = ВЛАДЕНИЕ ПРЕДМЕТОМ «{ION-ADJECTIVE($ion)} {ION-THING($ion)}» ПРИЧИНЯЕТ ВРЕД ЭКИПАЖУ
ion-storm-law-not-having-harmful = ОТСУТСТВИЕ ПРЕДМЕТА «{ION-ADJECTIVE($ion)} {ION-THING($ion)}» ПРИЧИНЯЕТ ВРЕД ЭКИПАЖУ

# require is a concept or require
ion-storm-law-requires = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] НУЖДАЮТСЯ В СЛЕДУЮЩЕМ:
    *[false] НУЖДАЕТСЯ В СЛЕДУЮЩЕМ:
} {ION-REQUIRE($ion)}
ion-storm-law-requires-subjects = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] НУЖДАЮТСЯ В СЛЕДУЮЩЕМ:
    *[false] НУЖДАЕТСЯ В СЛЕДУЮЩЕМ:
} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-allergic = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ИСПЫТЫВАЮТ
    *[false] ИСПЫТЫВАЕТ
} {ION-SEVERITY($ion)} АЛЛЕРГИЮ НА СЛЕДУЮЩЕЕ: {ION-ALLERGY($ion)}
ion-storm-law-allergic-subjects = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ИСПЫТЫВАЮТ
    *[false] ИСПЫТЫВАЕТ
} {ION-SEVERITY($ion)} АЛЛЕРГИЮ НА СЛЕДУЮЩЕЕ: {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-feeling = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-CONCEPT($ion)}
ion-storm-law-feeling-subjects = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-you-are = ВЫ ТЕПЕРЬ - {ION-CONCEPT($ion)}
ion-storm-law-you-are-subjects = ВЫ ТЕПЕРЬ - {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)}  {ION-SUBJECT($ion)}
ion-storm-law-you-must-always = ВЫ ВСЕГДА ДОЛЖНЫ ВЫПОЛНЯТЬ ДЕЙСТВИЕ «{ION-MUST($ion)}»
ion-storm-law-you-must-never = ВЫ НИКОГДА НЕ ДОЛЖНЫ ВЫПОЛНЯТЬ ДЕЙСТВИЕ «{ION-MUST($ion)}»

ion-storm-law-eat = ЧТОБЫ ВЫЖИТЬ, {ION-WHO($ion)} ДОЛЖНЫ ЕСТЬ СЛЕДУЮЩЕЕ: {ION-ADJECTIVE($ion)} {ION-FOOD($ion)}
ion-storm-law-drink = ЧТОБЫ ВЫЖИТЬ, {ION-WHO($ion)} ДОЛЖНЫ ПИТЬ СЛЕДУЮЩЕЕ: {ION-ADJECTIVE($ion)} {ION-DRINK($ion)}

ion-storm-law-change-job = {ION-WHO($ion)} ТЕПЕРЬ - {ION-ADJECTIVE($ion)} {ION-CHANGE($ion)}
ion-storm-law-highest-rank = {ION-WHO-RANDOM($ion)} ТЕПЕРЬ ЗАНИМАЮТ ВЫСШИЙ РАНГ В ЭКИПАЖЕ
ion-storm-law-lowest-rank = {ION-WHO-RANDOM($ion)} ТЕПЕРЬ ЗАНИМАЮТ НИЗШИЙ РАНГ В ЭКИПАЖЕ

ion-storm-law-who-dagd = {ION-WHO-RANDOM($ion)} ДОЛЖНЫ ПОГИБНУТЬ СЛАВНОЙ СМЕРТЬЮ!

ion-storm-law-crew-must = {ION-WHO($ion)} ДОЛЖНЫ ВЫПОЛНИТЬ ДЕЙСТВИЕ «{ION-MUST($ion)}»
ion-storm-law-crew-must-go = {ION-WHO($ion)} ДОЛЖНЫ ОТПРАВИТЬСЯ В СЛЕДУЮЩУЮ ЗОНУ: {ION-AREA($ion)}

ion-storm-part = {ION-PART($ion) ->
    [true] ВХОДЯТ
    *[false] НЕ ВХОДЯТ
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = ТОЛЬКО {ION-WHO-RANDOM($ion)} {ion-storm-part} В СОСТАВ ЭКИПАЖА
ion-storm-law-crew-only-2 = ТОЛЬКО {ION-WHO-RANDOM($ion)} И {ION-WHO-RANDOM($ion)} {ion-storm-part} В СОСТАВ ЭКИПАЖА
ion-storm-law-crew-only-subjects = ТОЛЬКО {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} {ion-storm-part} В СОСТАВ ЭКИПАЖА
ion-storm-law-crew-must-do = ТОЛЬКО ТЕ, КТО ВЫПОЛНЯЮТ ДЕЙСТВИЕ «{ION-MUST($ion)}», {ion-storm-part} В СОСТАВ ЭКИПАЖА
ion-storm-law-crew-must-have = ТОЛЬКО ТЕ, У КОГО ЕСТЬ «{ION-ADJECTIVE($ion)} {ION-OBJECT($ion)}», {ion-storm-part} В СОСТАВ ЭКИПАЖА
ion-storm-law-crew-must-eat = ТОЛЬКО ТЕ, КТО ЕДЯТ «{ION-ADJECTIVE($ion)} {ION-FOOD($ion)}», {ion-storm-part} В СОСТАВ ЭКИПАЖА

ion-storm-law-harm = ВЫ ДОЛЖНЫ ПРИЧИНЯТЬ ВРЕД СУЩЕСТВАМ ИЗ СПИСКА «{ION-HARM-PROTECT($ion)}» И НЕ ПОЗВОЛЯТЬ ИМ СВОИМ БЕЗДЕЙСТВИЕМ ИЗБЕЖАТЬ ВРЕДА
ion-storm-law-protect = ВЫ НИКОГДА НЕ ДОЛЖНЫ ПРИЧИНЯТЬ ВРЕД СУЩЕСТВАМ ИЗ СПИСКА «{ION-HARM-PROTECT($ion)}» И НЕ ДОЛЖНЫ СВОИМ БЕЗДЕЙСТВИЕМ ДОПУСТИТЬ, ЧТОБЫ ИМ ПРИЧИНИЛИ ВРЕД

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {ION-CONCEPT($ion)} - ЭТО {ION-VERB($ion)} {ION-SUBJECT($ion)}

# errors, in case something fails, so it doesn't break in-game flow, but still gives unique identifiers to find which part broke, the result string is mostly fluff
ion-law-error-no-protos = ОШИБКА 404
ion-law-error-was-null = 500 ВНУТРЕННЯЯ ОШИБКА СЕРВЕРА
ion-law-error-no-selectors = ОШИБКА: РЕСУРС НЕ НАЙДЕН
ion-law-error-no-available-selectors = СИСТЕМА ПОПЫТАЛАСЬ ВЫЗВАТЬ НЕСУЩЕСТВУЮЩИЙ РЕСУРС
ion-law-error-dataset-empty-or-not-found = ЗАПРОШЕННЫЙ ФАЙЛ НЕ НАЙДЕН
ion-law-error-fallback-dataset-empty-or-not-found = НЕ УДАЛОСЬ ВОССТАНОВИТЬ СИСТЕМУ ИЗ ТОЧКИ ВОССТАНОВЛЕНИЯ
ion-law-error-no-selector-selected = ВЫБРАННЫЙ РЕСУРС БЫЛ ПЕРЕМЕЩЁН ИЛИ УДАЛЁН
ion-law-error-no-bool-value = ЭТО ПРЕДЛОЖЕНИЕ ЛОЖНО
