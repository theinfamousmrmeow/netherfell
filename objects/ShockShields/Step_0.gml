/// @description Insert description here
// You can write your code in this editor

//image_angle+=10;

if (instance_exists(base)){
	x=mean(x,x,x,base.x+xoffset);
	y=mean(y,y,y,base.y+yoffset);
}
else {instance_destroy();}



if (blinking>0){
	visible=blinking mod 2;	
}
else {visible=true;}