/// @description Insert description here
// You can write your code in this editor


	global.mana-=((global.manaRecharge*MANA_RECHARGE_FACTOR));
	alarm[8]=1;
if (global.mana<1){
	instance_destroy();
}