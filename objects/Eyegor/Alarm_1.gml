/// @description Insert description here
// You can write your code in this editor

	alarm[1]=200;

if (action==actions.flying){
	action=actions.landing;
	alarm[1]=50;
}
else if (action=actions.landing){
	action=actions.attackPreparing;
	sprite_index=spr_eyegoyle_attack;
	image_speed=0;
	alarm[1]=50;
}
else if (action==actions.attackPreparing){
	action=actions.attacking;
	sprite_index=spr_eyegoyle_attack;
	image_speed=0.25;
	beamdir=220;
	alarm[1]=250;
	alarm[2]=1;
}
