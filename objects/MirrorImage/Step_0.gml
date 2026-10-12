/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!instance_exists(base)){
	instance_destroy();	
}
else {
	hspeed=base.hspeed*-1;
	vspeed=base.vspeed*-1;
	sprite_index=base.sprite_index;
	image_index=base.image_index;
	facing=base.facing*-1;
	faction=base.faction;
}

image_alpha=0.5+random(1)/2;