/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !(instance_exists(HornetSwarm)){
	instance_create_depth(x,y,0,HornetSwarm);	
}
mySwarm = instance_nearest(x,y,HornetSwarm);
ds_list_add(mySwarm.swarmMembers,id);

action=actions.idle;
facing = 270;
worth = 5;
deathPop=sfxSmallDeathPop;

image_blend=c_white;
		alarm[0]=random(50);
		
image_index=floor(random(image_number));