/// @description Insert description here
// You can write your code in this editor
event_inherited();
if (hp<=0){
//spawnParticleAbove(x,y,global.p_parry,1);
spawnParticleAbove(x,y,global.p_smallSplode,1);
spawnParticleAbove(x,y,global.p_flames,12);
sfxPlayWithVariance(deathPop, sfxPriorities.bgm, 4);


	if (!isShadow && ceil(random(100))<=worth){
		i=instance_create_depth(x,y,-9999,Treasure);
	}
	
}