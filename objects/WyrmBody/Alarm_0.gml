/// @description Insert description here
// You can write your code in this editor

if (action=actions.walk){
	action=actions.idle;
	friction=0.1;
}
else if (action==actions.idle){
	direction=random(360);
	//speed=2;
	action=actions.walk;
}
alarm[0]=80;