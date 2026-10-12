/// @description Insert description here
// You can write your code in this editor
if (action==actions.attackPreparing){
	sfxPlayWithVariance(sfxHornetCharge,sfxPriorities.bgm,3);
	action=actions.attacking;	
	image_blend=c_white;
	
	facing = 270;
	
	var enemy = instance_nearest(x,y,Player);
	
	if (enemy>0){
		facing = point_direction(x,y,enemy.x,enemy.y);
	}
	
}