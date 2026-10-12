// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spellIsUnlocked(){
	switch(argument0){
		case MagicMissiles:
			return global.upgrades[upgrades.shockSpell,upgradeArray.level]>=0;
		break;
		
		case MirrorImage:
			return global.upgrades[upgrades.mirrorImage,upgradeArray.level]>=0;
		break;
		
		case ShockShield:
			return global.upgrades[upgrades.shockSpell,upgradeArray.level]>=0;
		break;
	}
}