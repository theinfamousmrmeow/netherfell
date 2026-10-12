/// @description Insert description here
// You can write your code in this editor

event_inherited();

depth=-200;


motion_add(dir,0.1);

speed=clamp(speed,0,1);


if (tail>0){if !instance_exists(tail){tail=-1;}}

if (tail>0){

var dist = point_distance(x,y,tail.x,tail.y);

while (dist>maxDist){
	dir = point_direction(x,y,tail.x,tail.y);
	x+=lengthdir_x(1,dir);
	y+=lengthdir_y(1,dir);
	dist = point_distance(x,y,tail.x,tail.y);
	motion_add(dir,0.2);
	dir = point_direction(x,y,room_width/2,y)
}

if (y<8){
	dir=270+random(90)-45
	motion_add(dir,1);
}

 switch (action){
	case actions.attacking:
		sprite_index=spr_wyrm_attack;
		image_index=1;
		image_speed=0;
		break;
	case actions.attackPreparing:
		sprite_index=spr_wyrm_attack;
		image_index=0;
		spawnParticleAbove(x+random(4)-2,y+4+random(3),global.p_smoke,1);
		break;
	case actions.attackRecovering:
		sprite_index=spr_wyrm_attack;
		image_index=1;
		break;
	default:
		sprite_index=spr_wyrm_walk;
		image_index=0;
		image_speed=0;
		break;
		
	
 }
}
else {instance_destroy();}

//y=clamp(y,32,room_height(3/4));
if (hspeed<0){facing=-1;}
else if (hspeed>0){facing=1;}