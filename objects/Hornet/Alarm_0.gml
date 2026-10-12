/// @description Insert description here
// You can write your code in this editor
if (mySwarm>0){
		var facing = point_direction(x,y,mySwarm.x,mySwarm.y)+random(40)-20;
		friction=0;
		motion_add(facing,1);
}
		alarm[0]=25;