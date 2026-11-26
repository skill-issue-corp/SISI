spy-uplink-examine-message =
    You recognize this as your [bolditalic]spy uplink[/bolditalic]
    {"["}color=lime][bolditalic]Right click[/bolditalic][/color] it and select "View Bounties" to view your bounty list.
    {"["}color=orange][bolditalic]Click[/bolditalic][/color] the bounty target with it on to claim it.

spy-uplink-open-verb = 🕵 View Bounties
spy-uplink-steal-verb = 🕵 Scan Target
spy-uplink-refresh-time = Time until refresh: {$time}
spy-uplink-title = Spy Uplink
spy-uplink-flavor = Rewards given on first-come first-serve basis.
spy-uplink-claimed = 🕵 Claimed!
spy-uplink-cant-claim = Your benefactors see you unfit to complete this.
spy-uplink-reward = Reward: {$reward}
spy-uplink-description-label = [font size=10][color=darkcyan]{$desc}[/color][/font]
spy-uplink-collect-reward = Collect Reward
spy-uplink-bounties = Bounties
spy-uplink-rewards = Rewards
spy-uplink-select-reward = Select Reward
spy-uplink-no-rewards = No rewards available!
spy-uplink-steal-fail = Your uplink blinks red: {$target} is invalid for active non-claimed bounties or cannot be extracted from here.
spy-uplink-new = 🕵 Make new spy uplink

spy-uplink-ammo-name = Ammunition
spy-uplink-ammo-desc = Some ammo of your choice

spies-title = Spies
spies-description = A red spy has entered the base.

spy-role-claimed-bounties =
    {CAPITALIZE($name)} has claimed a total of [color=red]{$amount}[/color] bounties.
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

spy-role-briefing-short = You are a Spy, tasked with stealing various station equipment.

spy-role-uplink-pda-short =
    Your bounty uplink is located in your PDA.
    Remember, you can turn any PDA into your spy uplink if you lose yours.

spy-role-no-uplink-short =
    You don not have an uplink.
    Find any PDA and fashion it into spy uplink manually.

spy-bounty-default-name = {CAPITALIZE($item)} Theft
spy-bounty-default-desc = Steal any {$item}.

spy-bounty-specific-desc = Steal {$item}.

spy-bounty-area-desc =
    Steal {$item}, found in {$areas}.
    Similar targets outside of specified area won't complete the bounty.

spy-bounty-organ-name = {CAPITALIZE($uid)}'s {CAPITALIZE($organ)} Theft
spy-bounty-organ-desc = Scan {CAPITALIZE($uid)}, {$job} to steal their {$organ}.
