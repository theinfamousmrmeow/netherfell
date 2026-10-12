
if (y>16 && y<room_height-16){
	var prevspd = speed;
	motion_add(point_direction(x,y,room_width/2,y),speed/2)
	speed = prevspd;
}