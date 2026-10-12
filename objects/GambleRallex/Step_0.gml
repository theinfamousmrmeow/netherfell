/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(xtarget,ytarget)>5){
	dir = point_direction(x,y,xtarget,ytarget);
	motion_add(dir,friction*2);
	speed = clamp(speed,0,sp);
	///move_towards_point(xtarget,ytarget,sp);
	
	}
else {image_xscale=-1}

if (hspeed!=0){
	image_xscale=sign(hspeed);
	sprite_index=spr_shopGoblin;
}

else {sprite_index=spr_goblin_bag;}

if (speed>0.1){image_speed=0.25;}else {image_speed=0; image_index=0;}

scr_zphysics();

if (speed==sp && visible){
	spawnParticleAbove(x+random(16)-8,y+8,global.p_dust,1);
}