/// @description Insert description here
// You can write your code in this editor
addCoins(1);
sfxPlayWithVariance(sfxCoinGet,sfxPriorities.bgm,3);
repeat(8){
	spawnParticleAbove(mean(other.x,x)+random(16)-8,mean(other.y,y)+random(16)-8,global.p_sparkle,1);
}
event_perform_object(other,ev_other,ev_user0);

with other instance_destroy();