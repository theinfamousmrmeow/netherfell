/// @description Insert description here
// You can write your code in this editor
x=clamp(x,0+abs(sprite_width)/2,room_width-(abs(sprite_width)/2));
if (hp<=0){instance_destroy();}
if (y>room_height+32){
	y=-64;	
}

if (jitter>0){
	xx=random(jitter)-jitter/2;
	yy=random(jitter)-jitter/2;
}
else {
	xx=0; yy=0;	
}

if (blinking>0){
	visible=blinking mod 2;	
}
else {visible=true;}

//depth = -(y+z);