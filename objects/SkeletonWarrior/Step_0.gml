/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
event_inherited();

y=clamp(y,room_height*(1/4),room_height*(3/4));
/// @description Insert description here
// You can write your code in this editor
if (x+sprite_width/2+hspeed>=room_width){

	//with (object_index){
	hspeed=abs(hspeed)*-1;
	//}
}
else if (x-sprite_width/2+hspeed<=0){
	//with (object_index){
	hspeed=abs(hspeed);}
//}

if (action==actions.idle || action=actions.walk){
	
	if (canShoot) {sprite_index=spr_skeleton_walk} else {sprite_index=spr_skeleton_headless_run;}
	
	if (hspeed!=0){
		facing=sign(hspeed);
		if (action==actions.idle||action=actions.walk){

			image_speed=0.25;
			}
		}
	else {

		image_speed=0;
		image_index=0;
	}
}
else if (action==actions.defending){
	
	if (canShoot) {sprite_index=spr_skeleton_block} else {sprite_index=spr_skeleton_headless_block;}
	
	if (hspeed!=0){
		facing=sign(hspeed);
		if (action==actions.idle){
		
			image_speed=0.25;
			}
		}
	else {

		image_speed=0;
		image_index=0;
	}
}
if (action==actions.hurt){
	sprite_index=spr_skeleton_block;	
}