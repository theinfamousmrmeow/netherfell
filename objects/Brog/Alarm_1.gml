/// @description Insert description here
// You can write your code in this editor

	alarm[1]=200;

if (action==actions.attackPreparing){
	action=actions.attacking;
	sfxPlayWithVariance(sfxBrogBubble,sfxPriorities.bgm,5);
	sprite_index=spr_brog_attack_01;
	image_index=0;
	image_speed=0.25;

}

if (action==actions.idle){
	action=actions.attackPreparing;
	sprite_index=spr_brog_attackPrepare
	alarm[1]=30;
}