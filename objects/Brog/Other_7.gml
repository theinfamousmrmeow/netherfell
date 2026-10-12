/// @description Insert description here
// You can write your code in this editor
if (action==actions.attacking){
	action=actions.idle;
	
	spawnParticleAbove(x,y,global.p_bubble,5);
	
	i=instance_create_depth(x,y,-9999,Shot);
	i.direction=270;
	i.speed=1;
	i.faction=faction;
	i.sprite_index=spr_projectile_acid;
}