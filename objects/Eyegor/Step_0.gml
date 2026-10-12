/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
scr_zphysics();

if (hspeed!=0){facing=sign(hspeed)*-1;}

speed=clamp(speed,0,0.5);

y=clamp(y,sprite_height/2,room_height*(1/2));

if (action==actions.flying){
	
	motion_add(direction,0.05);
	sprite_index=spr_eyegoyle_fly_eyesopened;
	image_speed=0.25;
	//if (zspeed>0){image_speed=0.25;}
		//else {image_speed=0;}
	friction=0;
	if (z<16 && zspeed<=0){
		zspeed=1;	
	}
}
else if (action=actions.landing){
	friction=0.05;
	image_speed=0;
	if (z>0){image_index=0;}
	if (z!=0 && z+zspeed<=0){
		repeat (10) spawnParticle(x+random(sprite_width/2)-sprite_width/4,y+sprite_height/2+random(8)-4,global.p_dust,1);}
	else {image_index=1;}
}
