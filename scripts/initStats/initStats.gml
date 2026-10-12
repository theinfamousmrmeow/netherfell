// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initStats(){
	global.hp=3;
	global.hpMax=global.hp;
	global.mana=3;
	global.manaMax=global.mana;
	global.currentRound=1;
	score=0;
	global.upgrades[upgrades.mirrorImage,upgradeArray.level]=-1;
	global.upgrades[upgrades.shockSpell,upgradeArray.level]=-1;
	global.upgrades[upgrades.mpUp,upgradeArray.level]=0;
}