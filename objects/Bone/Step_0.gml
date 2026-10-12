/// @description Insert description here
// You can write your code in this editor
if (attached<=0){
	x=xxstart+sin(y/6)*8;
	image_angle=0;
}
else {
	if (instance_exists(attached)){
		x=attached.x;
		y=attached.y-9;
	}
	else {attached=-1; instance_destroy();}
}