/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (action=actions.spawning){
	image_angle=direction
	move_towards_point(xtarget,ytarget,2)
	if (distance_to_point(xtarget,ytarget)<=2){
		action=actions.idle;	
	}
}
else {
	image_angle=direction
	motion_add(direction+random(6)-3,1);
	speed=1;
	direction=clamp(direction,270-45,270+45);
	image_speed=1;
}