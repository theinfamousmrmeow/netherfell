/// @description Insert description here
// You can write your code in this editor
if (faction!=other.faction && blinking==0 && hp>0 && (z==0 || z>0 && (other.y>y-z-size && other.y<y-z+size))){
	sfxPlayWithVariance(sfxWizardStruck1,sfxPriorities.combatDamage,3)
	//sfxPlay(sfxWizardStruck1);
	//we need to define a variable on agent for combatDamage soundID 
	//and instantiate at each child of Agent
	screenShake(6);
	alarm[9]=4;
	blinking=15;
	jitter=6;
	alarm[10]=2;
	if (action==actions.idle || interruptible == true){
		action=actions.hurt;
		alarm[11]=12;
	}
	spawnParticleAbove(mean(x,other.x),mean(y,other.y),global.p_ember,1);
	hp-=other.damage;
	with other instance_destroy()
}