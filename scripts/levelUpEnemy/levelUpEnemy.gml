// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function levelUpEnemy(){
	level = argument0;
	if (DISABLE_LEVELING) then level=0;
	worth +=ceil(worth * level/2);
	hp += ceil(hp/10)*level;
	paletteIndex = level;
}