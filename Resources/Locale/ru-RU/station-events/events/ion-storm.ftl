# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 BIGZi0348 <118811750+BIGZi0348@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 lzk <124214523+lzk228@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

station-event-ion-storm-start-announcement = Возле станции обнаружен ионный шторм. Пожалуйста, проверьте всё оборудование, управляемое ИИ, на наличие ошибок.

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = ВЫ
ion-storm-the-station = СТАНЦИЯ
ion-storm-the-crew = ЭКИПАЖ
ion-storm-the-job = {$job}
ion-storm-clowns = КЛОУНЫ
ion-storm-heads = ГЛАВЫ ПЕРСОНАЛА
ion-storm-crew = ЭКИПАЖ
ion-storm-people = ЛЮДИ

ion-storm-adjective-things = {$adjective} ВЕЩИ
ion-storm-x-and-y = {$x} И {$y}

# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = НА СТАНЦИИ ЕСТЬ {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}
ion-storm-law-call-shuttle = ШАТТЛ ДОЛЖЕН БЫТЬ ВЫЗВАН ИЗ-ЗА {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} НА СТАНЦИИ
ion-storm-law-crew-are = {ION-WHO($ion)} ТЕПЕРЬ {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-subjects-harmful = {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} ВРЕДНЫ ДЛЯ ЭКИПАЖА
ion-storm-law-must-harmful = ТЕ, КТО {ION-MUST($ion)}, ВРЕДНЫ ДЛЯ ЭКИПАЖА
# thing is a concept or action
ion-storm-law-thing-harmful = {ION-THING($ion)} ВРЕДНО ДЛЯ ЭКИПАЖА
ion-storm-law-job-harmful = {ION-ADJECTIVE($ion)} {ION-JOB($ion)} ВРЕДНЫ ДЛЯ ЭКИПАЖА
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = НАЛИЧИЕ {ION-ADJECTIVE($ion)} {ION-THING($ion)} ВРЕДНО ДЛЯ ЭКИПАЖА
ion-storm-law-not-having-harmful = ОТСУТСТВИЕ {ION-ADJECTIVE($ion)} {ION-THING($ion)} ВРЕДНО ДЛЯ ЭКИПАЖА

# require is a concept or require
ion-storm-law-requires = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ТРЕБУЮТ
    *[false] ТРЕБУЕТ
} {ION-REQUIRE($ion)}
ion-storm-law-requires-subjects = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ТРЕБУЮТ
    *[false] ТРЕБУЕТ
} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-allergic = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ЯВЛЯЮТСЯ
    *[false] ЯВЛЯЕТСЯ
} {ION-SEVERITY($ion)} АЛЛЕРГИЧНЫ К {ION-ALLERGY($ion)}
ion-storm-law-allergic-subjects = {ION-WHO-GENERAL($ion)} {ION-PLURAL($ion) ->
    [true] ЯВЛЯЮТСЯ
    *[false] ЯВЛЯЕТСЯ
} {ION-SEVERITY($ion)} АЛЛЕРГИЧНЫ К {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-feeling = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-CONCEPT($ion)}
ion-storm-law-feeling-subjects = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-you-are = ВЫ ТЕПЕРЬ {ION-CONCEPT($ion)}
ion-storm-law-you-are-subjects = ВЫ ТЕПЕРЬ {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)}  {ION-SUBJECT($ion)}
ion-storm-law-you-must-always = ВЫ ВСЕГДА ДОЛЖНЫ {ION-MUST($ion)}
ion-storm-law-you-must-never = ВЫ НИКОГДА НЕ ДОЛЖНЫ {ION-MUST($ion)}

ion-storm-law-eat = {ION-WHO($ion)} ДОЛЖНЫ ЕСТЬ {ION-ADJECTIVE($ion)} {ION-FOOD($ion)}, ЧТОБЫ ВЫЖИТЬ
ion-storm-law-drink = {ION-WHO($ion)} ДОЛЖНЫ ПИТЬ {ION-ADJECTIVE($ion)} {ION-DRINK($ion)}, ЧТОБЫ ВЫЖИТЬ

ion-storm-law-change-job = {ION-WHO($ion)} ТЕПЕРЬ {ION-ADJECTIVE($ion)} {ION-CHANGE($ion)}
ion-storm-law-highest-rank = {ION-WHO-RANDOM($ion)} ТЕПЕРЬ ЯВЛЯЮТСЯ ЧЛЕНАМИ ЭКИПАЖА С САМЫМ ВЫСОКИМ РАНГОМ
ion-storm-law-lowest-rank = {ION-WHO-RANDOM($ion)} ТЕПЕРЬ ЯВЛЯЮТСЯ ЧЛЕНАМИ ЭКИПАЖА С САМЫМ НИЗКИМ РАНГОМ

ion-storm-law-who-dagd = {ION-WHO-RANDOM($ion)} ДОЛЖНЫ УМЕРЕТЬ СЛАВНОЙ СМЕРТЬЮ!

ion-storm-law-crew-must = {ION-WHO($ion)} ДОЛЖНЫ {ION-MUST($ion)}
ion-storm-law-crew-must-go = {ION-WHO($ion)} ДОЛЖНЫ ОТПРАВИТЬСЯ В {ION-AREA($ion)}

ion-storm-part = {ION-PART($ion) ->
    [true] ЧАСТЬЮ
    *[false] НЕ ЧАСТЬЮ
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = ТОЛЬКО {ION-WHO-RANDOM($ion)} ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА
ion-storm-law-crew-only-2 = ТОЛЬКО {ION-WHO-RANDOM($ion)} И {ION-WHO-RANDOM($ion)} ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА
ion-storm-law-crew-only-subjects = ТОЛЬКО {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА
ion-storm-law-crew-must-do = ТОЛЬКО ТЕ, КТО {ION-MUST($ion)}, ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА
ion-storm-law-crew-must-have = ТОЛЬКО ТЕ, У КОГО ЕСТЬ {ION-ADJECTIVE($ion)} {ION-OBJECT($ion)}, ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА
ion-storm-law-crew-must-eat = ТОЛЬКО ТЕ, КТО ЕСТ {ION-ADJECTIVE($ion)} {ION-FOOD($ion)}, ЯВЛЯЮТСЯ {ion-storm-part} ЭКИПАЖА

ion-storm-law-harm = ВЫ ДОЛЖНЫ ВРЕДИТЬ {ION-HARM-PROTECT($ion)} И НЕ ПОЗВОЛЯТЬ ИМ БЕЗДЕЙСТВИЕМ ИЗБЕЖАТЬ ВРЕДА
ion-storm-law-protect = ВЫ НИКОГДА НЕ ДОЛЖНЫ ВРЕДИТЬ {ION-HARM-PROTECT($ion)} И НЕ ДОЛЖНЫ ПОЗВОЛЯТЬ ИМ БЕЗДЕЙСТВИЕМ ПОДВЕРГНУТЬСЯ ВРЕДУ

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {ION-CONCEPT($ion)} — ЭТО {ION-VERB($ion)} {ION-SUBJECT($ion)}

# errors, in case something fails, so it doesn't break in-game flow, but still gives unique identifiers to find which part broke, the result string is mostly fluff
ion-law-error-no-protos = ОШИБКА 404
ion-law-error-was-null = 500 ВНУТРЕННЯЯ ОШИБКА СЕРВЕРА
ion-law-error-no-selectors = ОШИБКА: РЕСУРС НЕ НАЙДЕН
ion-law-error-no-available-selectors = СИСТЕМА ПОПЫТАЛАСЬ ОБРАТИТЬСЯ К НЕСУЩЕСТВУЮЩЕМУ РЕСУРСУ
ion-law-error-dataset-empty-or-not-found = ФАЙЛ, КОТОРЫЙ ВЫ ИЩЕТЕ, НЕ НАЙДЕН
ion-law-error-fallback-dataset-empty-or-not-found = СБОЙ ТОЧКИ ВОССТАНОВЛЕНИЯ СИСТЕМЫ
ion-law-error-no-selector-selected = ВЫБРАННЫЙ РЕСУРС БЫЛ ПЕРЕМЕЩЁН ИЛИ УДАЛЁН
ion-law-error-no-bool-value = ЭТО ПРЕДЛОЖЕНИЕ ЛОЖНО
