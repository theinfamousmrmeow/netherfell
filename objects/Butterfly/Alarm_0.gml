/// @description Insert description here
// You can write your code in this editor
direction=random(360);
//speed=1;
alarm[0]=16+random(32);

if (distance_to_point(xstart,ystart)>80){
	direction=point_direction(x,y,xstart,ystart)+random(80)-40;	
}
