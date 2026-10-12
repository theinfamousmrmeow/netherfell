/// @description Insert description here
// You can write your code in this editor
motion_add(facing,accel);

speed = clamp(speed,0,maxspd);

if (ds_list_size(swarmMembers)==0){instance_destroy();}

x=clamp(x,24,room_width-24);
y=clamp(y,32,room_height/2);
