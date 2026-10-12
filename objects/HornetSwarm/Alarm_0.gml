/// @description Insert description here
// You can write your code in this editor
facing = choose(180,0);

if choose(true,false){
	if (x<room_width/4 || x>room_width*(3/4)){
		facing = point_direction(x,y,room_width/2,y);	
	}
}
else {
	facing = point_direction(x,y,x,room_height/2);	
}

alarm[0]=120;