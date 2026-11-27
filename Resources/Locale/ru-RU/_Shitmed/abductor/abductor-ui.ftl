# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2025 Theodore Lukin <66275205+pheenty@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 gluesniffler <159397573+gluesniffler@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

abductors-ui-beacons = Маяки
abductors-ui-teleport = Телепортировать
abductors-ui-attract = Притянуть

abductors-ui-experiment = Эксперимент
abductors-ui-complete-experiment = Завершить эксперимент

abductors-ui-gizmo-transferred = Данные о цели переданы

abductors-ui-armor-control = Управление Бронёй
abductors-ui-combat-mode = Боевой Режим
abductors-ui-stealth-mode = Режим Скрытности
abductors-ui-lock-armor = Заблокировать Броню
abductors-ui-unlock-armor = Разблокировать Броню
abductors-ui-vest-linked = Жилет подключён

abductors-title = Абдукторы
abductors-description = Абдукторы выбрали станцию своей целью. Не дайте им себя похитить!

abductor-lone-ghost-role-name = Абдуктор-Одиночка
abductor-lone-ghost-role-desc = Похищайте людей, набивайте их экспериментальными органами сомнительного происхождения, а затем промывайте им мозги. Всё самостоятельно.

abductor-scientist-ghost-role-name = Учёный Абдукторов
abductor-scientist-ghost-role-desc = Телепортируйте на корабль людей, похищенных напарником, и набивайте их экспериментальными органами сомнительного происхождения.

abductor-agent-ghost-role-name = Агент Абдукторов
abductor-agent-ghost-role-desc = Похищайте людей и Промывайте им Мозги, пока ваш напарник набивает их экспериментальными органами сомнительного происхождения.

abductors-ghost-role-rules = Вы - [color=red][bold]Абдуктор[/bold][/color].
                            Ваша задача - похищать людей со станции, заменять их органы различными экспериментальными устройствами,
                            а затем возвращать их обратно. Запрещено разрушать станцию или намеренно убивать людей.
                            В интересах чистоты эксперимента возвращайте испытуемых живыми и здоровыми.

                            Вы ничего не помните о прошлой жизни и забыли всё, что узнали, будучи призраком.
                            Вы можете помнить общие сведения об игре: как готовить, пользоваться предметами и т. д.
                            Вам категорически [color=red]НЕЛЬЗЯ[/color] вспоминать, например, имя, внешность и другие детали о прежнем персонаже.

abductor-round-end-agent-name = абдуктор

objective-issuer-abductors = [color=#FD0098]Корабль-Матка[/color]

objective-condition-abduct-title = Провести эксперименты ({$count})
objective-condition-abduct-description = Проведите эксперименты над землянами с помощью планшета эксперимента. Засчитывается каждый завершённый этап.

# SIS-Start
abductor-role-greeting =
    {"["}gradient angle="135" spread="35" color1="{$hl1}" color2="{$hl2}" speed="1.8"]Вы Абдуктор, ведущий исследователь высшей цивилизации.[/gradient]
    Примитивные земляне послужат материалом для великих открытий. Ваша задача: [gradient angle="45" spread="60" color1="{$hl1}" color2="{$hl2}" speed="1.2"]похищать людей[/gradient], заменять их органы на экспериментальные устройства и возвращать живыми.

abductor-role-greeting-desc =
    • [color={$hl1}]Чистота эксперимента:[/color] не убивайте людей намеренно и не разрушайте станцию — [color={$hl1}]мёртвые испытуемые бесполезны[/color] для науки!
    • [color={$hl1}]Операционная:[/color] используйте стол для экспериментов на корабле, чтобы вживлять аномальные органы. Засчитывается каждый завершённый этап.
    • [color={$hl1}]Командная работа:[/color] Агент усыпляет жертв на станции и передаёт данные, а Учёный управляет консолями и телепортом.
    • [color={$hl1}]Разум Пришельцев:[/color] используйте [color={$hl1}]+a[/color] или [color={$hl1}]+[/color] в чате для связи с напарником.
# SIS-End

roles-antag-abductor-objective = Похищайте членов экипажа станции, промывайте им мозги и ставьте на них эксперименты!

# SIS-Start
abductor-victim-role-greeting =
    {"["}gradient angle="60" spread="40" color1="{$hl1}" color2="{$hl2}" speed="2.2"]Они существуют... Они были здесь.[/gradient]
    Вас похитили серые гуманоиды с летающей тарелки и провели над вами нечестивые вивисекции. Внутри вашего тела [gradient angle="90" spread="50" color1="{$hl1}" color2="{$hl2}" speed="1.5"]что-то неестественно пульсирует...[/gradient]

abductor-victim-role-greeting-desc =
    • [color={$hl1}]Шок и Паранойя:[/color] вы свободный антагонист. Ваши прежние убеждения разрушены контактом третьей степени.
    • [color={$hl1}]Голоса в голове:[/color] выполняйте странные задачи из меню персонажа ([color={$hl1}]C[/color] / [color={$hl1}]F1[/color]), которые шепчут вам Голоса.
    • [color={$hl1}]Инопланетные органы:[/color] пришельцы зашили внутрь вас экспериментальный орган — используйте его новые странные свойства!
# SIS-End

abductor-victim-role-name = Похищенный Абдукторами
abductor-victim-role-name-freeagent = Похищенный Абдукторами (Свободный Агент)
abductor-victim-role-desc = Вы видели то, чего видеть не следовало. Мир должен узнать правду.

objective-issuer-voices = [color=#FD0098]Голоса[/color]
abductor-ui-pad-found = площадка: [color=green]подключена[/color]
abductor-ui-pad-not-found = площадка: [color=red]не найдена[/color]
abductor-ui-target-none = цель: [color=red]НЕТ[/color]
abductor-ui-target-found = цель: [color=green]{$target}[/color]
abductor-ui-experimentator-connected = возвратная капсула: [color=green]подключена[/color]
abductor-ui-experimentator-not-found = возвратная капсула: [color=red]не найдена[/color]
abductor-ui-victim-none = жертва: [color=red]НЕТ[/color]
abductor-ui-victim-found = жертва: [color=green]{$victim}[/color]
abductor-ui-armor-plug-in = [color=red][font size=16]Подключите броню абдуктора![/font][/color]
