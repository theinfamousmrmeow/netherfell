/// @description Insert description here
// You can write your code in this editor
event_inherited()



if (action=actions.idle && mySwarm>0){

	var dist = distance_to_object(mySwarm)
	if (dist>12){
		facing = point_direction(x,y,mySwarm.x,mySwarm.y)+random(40)-20;
		friction=0;
		motion_add(facing,1);
	}
	speed = clamp(speed,0.5,1);
		sprite_index=spr_murderHornet_fly;

}
else if (action=actions.attacking){
	motion_add(facing+random(6)-3,0.25);
	//speed=3;
	//direction=clamp(direction,270-45,270+45);
	//image_speed=1;

		sprite_index=spr_murderHornet_hover;

	speed=clamp(speed,0,2.5);
	
}
if (action==actions.attackPreparing){
	image_blend=choose(c_white,c_red);	
}

if (hspeed!=0){
	image_xscale=sign(hspeed);	
}

image_speed=1;