# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Ilya246 <57039557+Ilya246@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Piras314 <p1r4s@proton.me>
# SPDX-FileCopyrightText: 2025 Theodore Lukin <66275205+pheenty@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 gluesniffler <159397573+gluesniffler@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

abductors-ui-beacons = Beacons
abductors-ui-teleport = Teleport
abductors-ui-attract = Attract

abductors-ui-experiment = Experiment
abductors-ui-complete-experiment = Complete the experiment

abductors-ui-gizmo-transferred = Target information transferred

abductors-ui-armor-control = Armor Control
abductors-ui-combat-mode = Combat Mode
abductors-ui-stealth-mode = Stealth Mode
abductors-ui-lock-armor = Lock Armor
abductors-ui-unlock-armor = Unlock Armor
abductors-ui-vest-linked = Vest linked

abductors-title = Abductors
abductors-description = Abductors have targeted the station. Avoid getting kidnapped by them!

abductor-lone-ghost-role-name = Lone Abductor
abductor-lone-ghost-role-desc = Kidnap people, and stuff them with experimental organs of dubious origin, then brainwash them, all by yourself.

abductor-scientist-ghost-role-name = Abductor Scientist
abductor-scientist-ghost-role-desc = Teleport people your partner kidnapped onto your ship and stuff them with experimental organs of dubious origin.

abductor-agent-ghost-role-name = Abductor Agent
abductor-agent-ghost-role-desc = Kidnap and Brainwash people for your partner to stuff them with experimental organs of dubious origin.

abductors-ghost-role-rules = You are an [color=red][bold]Abductor[/bold][/color].
                            Your intentions are to abduct people from the station and replace their organs with various experimental devices,
                            after which you return them back. You are not allowed to destroy the station or intentionally kill people.
                            It is in your interest to return the test subjects alive and healthy for the purity of the experiment.

                            You don't remember any of your previous life, and you don't remember anything you learned as a ghost.
                            You are allowed to remember knowledge about the game in general, such as how to cook, how to use objects, etc.
                            You are absolutely [color=red]NOT[/color] allowed to remember, say, the name, appearance, etc. of your previous character.

abductor-round-end-agent-name = abductor

objective-issuer-abductors = [color=#FD0098]Mothership[/color]

objective-condition-abduct-title = Perform {$count} experiments
objective-condition-abduct-description = You need to complete experiments on the earthlings using your experiment tablet. Each step you complete counts.

# SIS-Start
## --- Abductor Greeting ---
abductor-role-greeting =
    {"["}gradient angle="135" spread="35" color1="{$hl1}" color2="{$hl2}" speed="1.8"]Вы Абдуктор, ведущий исследователь высшей цивилизации.[/gradient]
    Примитивные земляне послужат материалом для великих открытий. Ваша задача: [gradient angle="45" spread="60" color1="{$hl1}" color2="{$hl2}" speed="1.2"]похищать людей[/gradient], заменять их органы на экспериментальные устройства и возвращать живыми.

abductor-role-greeting-desc =
    • [color={$hl1}]Чистота эксперимента:[/color] не убивайте людей намеренно и не разрушайте станцию — [color={$hl1}]мёртвые испытуемые бесполезны[/color] для науки!
    • [color={$hl1}]Операционная:[/color] используйте стол для экспериментов на корабле, чтобы вживлять аномальные органы. Засчитывается каждый завершённый этап.
    • [color={$hl1}]Командная работа:[/color] Агент усыпляет жертв на станции и передаёт данные, а Учёный управляет консолями и телепортом.
    • [color={$hl1}]Разум Пришельцев:[/color] используйте [color={$hl1}]+a[/color] или [color={$hl1}]+[/color] в чате для связи с напарником (не путайте с Разумом Серых!).
# SIS-End

roles-antag-abductor-objective = Kidnap and brainwash station crew and perform your experiments on them!

# SIS-Start
## --- Abductor Victim Greeting ---
abductor-victim-role-greeting =
    {"["}gradient angle="60" spread="40" color1="{$hl1}" color2="{$hl2}" speed="2.2"]Они существуют... Они были здесь.[/gradient]
    Вас похитили серые гуманоиды с летающей тарелки и провели над вами нечестивые вивисекции. Внутри вашего тела [gradient angle="90" spread="50" color1="{$hl1}" color2="{$hl2}" speed="1.5"]что-то неестественно пульсирует...[/gradient]

abductor-victim-role-greeting-desc =
    • [color={$hl1}]Шок и Паранойя:[/color] вы свободный антагонист. Ваши прежние убеждения разрушены контактом третьей степени.
    • [color={$hl1}]Голоса в голове:[/color] выполняйте странные задачи из меню персонажа ([color={$hl1}]C[/color] / [color={$hl1}]F1[/color]), которые шепчут вам Голоса.
    • [color={$hl1}]Инопланетные органы:[/color] пришельцы зашили внутрь вас экспериментальный орган — используйте его новые странные свойства!
# SIS-End

abductor-victim-role-greeting = You have seen things you shouldn't have. The world must know the truth.
abductor-victim-role-name = Abductee
abductor-victim-role-name-freeagent = Abductee (Free Agent)
abductor-victim-role-desc = You have seen things you shouldn't have. The world must know the truth.

objective-issuer-voices = [color=#FD0098]The Voices[/color]
abductor-ui-pad-found = pad: [color=green]connected[/color]
abductor-ui-pad-not-found = pad: [color=red]not found[/color]
abductor-ui-target-none = target: [color=red]NONE[/color]
abductor-ui-target-found = target: [color=green]{$target}[/color]
abductor-ui-experimentator-connected = return pod: [color=green]connected[/color]
abductor-ui-experimentator-not-found = return pod: [color=red]not found[/color]
abductor-ui-victim-none = victim: [color=red]NONE[/color]
abductor-ui-victim-found = victim: [color=green]{$victim}[/color]
abductor-ui-armor-plug-in = [color=red][font size=16]You need to plug in abductor armor![/font][/color]
