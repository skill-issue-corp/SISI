spy-uplink-examine-message =
    Это ваш [bolditalic]шпионский аплинк[/bolditalic]
    {"["}color=lime][bolditalic]Щёлкните правой кнопкой мыши[/bolditalic][/color] и выберите «Просмотреть Задания», чтобы открыть список заданий.
    {"["}color=orange][bolditalic]Щёлкните[/bolditalic][/color] по цели задания включённым аплинком, чтобы засчитать кражу.

spy-uplink-open-verb = 🕵 Просмотреть Задания
spy-uplink-steal-verb = 🕵 Сканировать Цель
spy-uplink-refresh-time = До обновления: {$time}
spy-uplink-title = Шпионский Аплинк
spy-uplink-flavor = Кто первым выполнит задание, тот и получит награду.
spy-uplink-claimed = 🕵 Засчитано!
spy-uplink-cant-claim = Ваши покровители считают, что вам это поручать нельзя.
spy-uplink-reward = Награда: {$reward}
spy-uplink-description-label = [font size=10][color=darkcyan]{$desc}[/color][/font]
spy-uplink-collect-reward = Получить Награду
spy-uplink-bounties = Задания
spy-uplink-rewards = Награды
spy-uplink-select-reward = Выбрать Награду
spy-uplink-no-rewards = Доступных наград нет!
spy-uplink-steal-fail = Аплинк мигает красным: {$target} не подходит ни к одному открытому заданию или его нельзя извлечь отсюда.
spy-uplink-new = 🕵 Сделать новый шпионский аплинк

spy-uplink-ammo-name = Боеприпасы
spy-uplink-ammo-desc = Немного боеприпасов на ваш выбор

spies-title = Шпионы
spies-description = Красный шпион проник на базу.

spy-role-claimed-bounties =
    {CAPITALIZE($name)} выполняет задания. Всего: [color=red]{$amount}[/color].
    {" "}

# SIS-Start
spy-role-greeting =
    Вы - [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]шпион[/gradient].
    Ваша миссия, если вы решите её принять: проникнуть на космическую станцию 14.
    Замаскируйтесь под члена их экипажа и [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]украдите жизненно важное оборудование[/gradient].
    Если вас поймают или убьют, ваш работодатель откажется от каких-либо знаний о ваших действиях.
    Удачи, агент.

spy-role-greeting-desc =
    • [color={$hl1}]Прикрытие:[/color] выдавайте себя за члена экипажа и не привлекайте внимания службы безопасности.
    • [color={$hl1}]Награды:[/color] ваши задания на кражи выдаются через [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]аплинк в КПК[/gradient] — выполняйте их ради награды.
    • [color={$hl1}]Договор:[/color] если вас раскроют, работодатель от всего откажется. [gradient color1="{$hl1}" color2="{$hl2}" speed="1"]Действуйте тихо и не оставляйте свидетелей[/gradient].
# SIS-End

spy-role-briefing-short = Вы Шпион, которому поручено красть различное оборудование станции.

spy-role-uplink-pda-short =
    Ваш аплинк с заданиями находится в КПК.
    Если потеряете свой, помните: любой КПК можно превратить в шпионский аплинк.

spy-role-no-uplink-short =
    У вас нет аплинка.
    Найдите любой КПК и вручную превратите его в шпионский аплинк.

spy-bounty-default-name = Кража: {CAPITALIZE($item)}
spy-bounty-default-desc = Украдите любой предмет типа «{$item}».

spy-bounty-specific-desc = Украдите {$item}.

spy-bounty-area-desc =
    Украдите {$item}, который находится в зоне «{$areas}».
    Такие же цели за пределами указанной зоны не засчитываются.

spy-bounty-organ-name = Кража Органа «{CAPITALIZE($organ)}» у {CAPITALIZE($uid)}
spy-bounty-organ-desc = Отсканируйте цель {CAPITALIZE($uid)}, {$job}, чтобы украсть её орган «{$organ}».
