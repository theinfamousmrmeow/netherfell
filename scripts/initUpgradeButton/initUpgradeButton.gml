	///@param idOfButton
	///@param upgradeType
function initUpgradeButton(argument0, argument1) {
		var i=argument0;
		i.sprite_index=global.upgrades[argument1,upgradeArray.buttonIcon];
		i.upgradeType=argument1;
		i.cost=global.upgrades[argument1,upgradeArray.cost];
		i.text=global.upgrades[argument1,upgradeArray.buttonText];
}
