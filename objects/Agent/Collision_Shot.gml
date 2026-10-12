/// @description Insert description here
// You can write your code in this editor
if (faction!=other.faction && blinking==0 && hp>0 && (z==0 || z>0 && (other.y>y-z-size && other.y<y-z+size))){
	
	jitter=5;
	alarm[10]=2;
	if (action==actions.idle || interruptible == true){
		action=actions.hurt;
		alarm[11]=12;
	}
	spawnParticleAbove(mean(x,other.x),mean(y,other.y),global.p_ember,1);
	
	hp-=other.damage;
	with other instance_destroy()

	
}