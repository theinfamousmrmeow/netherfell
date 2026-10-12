/// @description Insert description here
// You can write your code in this editor
event_inherited();

y=clamp(y,room_height*(1/4),room_height*(3/4));
/// @description Insert description here
// You can write your code in this editor
if (x+sprite_width/2+hspeed>=room_width){
	
	//with (Brog){
	hspeed=abs(hspeed)*-1;
	//}
}
else if (x-sprite_width/2+hspeed<=0){
//	with (Brog){
	hspeed=abs(hspeed);//}
}

if (action==actions.idle || action=actions.walk){
	if (hspeed!=0){
		facing=sign(hspeed);

		if (action==actions.idle){
			sprite_index=spr_brog_walk;	
			image_speed=0.25;
			}
		}
	else {
		sprite_index=spr_brog_idle;
		image_speed=0.1;
	}
}
if (action==actions.hurt){
	sprite_index=spr_brog_hurt;	
}

		if (facing==0){facing=1;}