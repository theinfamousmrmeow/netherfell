/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


y=clamp(y,0+sprite_height,room_height*(0.4));

image_xscale=1;
facing=1;
speed=clamp(speed,0,0.25);
yy=0;
xx=0;
//if (speed!=0){action=actions.walk;}else{action=actions.idle;}

if (action=actions.walk){
		//facing=sign(hspeed);
			sprite_index=spr_wyrm_body_walk;
			image_speed=0.5;
			motion_add(direction,friction+0.1);
}
else  if action==actions.idle{

			sprite_index=spr_wyrm_body_idle;
			image_speed=0.25;
			friction=0.1;
}

if (action==actions.hurt){
	sprite_index=spr_wyrm_body_idle;
}