/// @description Make a guy aggro
// You can write your code in this editor

if (ds_list_size(swarmMembers)>0){
	ds_list_shuffle(swarmMembers);
	var i = ds_list_find_value(swarmMembers,0);
	if (instance_exists(i)){
		i.action = actions.attackPreparing;
		i.alarm[1]=40;
		//i.direction=270;
		//i.speed=2;
		i.mySwarm=-1;
	}
	ds_list_delete(swarmMembers,0);
}
alarm[1]=attackRate;