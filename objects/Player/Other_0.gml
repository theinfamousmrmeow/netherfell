/// @description Insert description here
// You can write your code in this editor
if (y<0){
	y=room_height+32;
	
	action=actions.goto;
	ytarget=room_height-32;
	global.gameState=gameStates.game;
	zspeed=1.5;
	room_restart();
	
	i=instance_create_depth(x-8,y-16,0,FlyingDoor);
	i=instance_create_depth(x+8,y-16,0,FlyingDoor);
	i.image_xscale=-1;
}