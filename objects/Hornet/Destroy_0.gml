/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (mySwarm>0){
	if (instance_exists(mySwarm)){
		
		ds_list_delete(mySwarm.swarmMembers,ds_list_find_index(mySwarm.swarmMembers,id));	
	}
}

if (hp<=0){
	explodeIntoChunks();
}