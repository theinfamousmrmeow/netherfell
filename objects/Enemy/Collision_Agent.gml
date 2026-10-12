/// @description Insert description here
// You can write your code in this editor
if (faction!=other.faction && other.action!=actions.hurt && other.blinking==0 && other.hp>0){
		if (touchDamage>0){
			other.action=actions.hurt;
			other.alarm[11]=12;
			other.alarm[9]=4;
			other.blinking=15;
			other.jitter=4;
			other.alarm[10]=2;
			other.hp-=touchDamage;
			
			if (other.object_index==Player){
				screenShake(6);
				sfxPlayWithVariance(sfxWizardStruck1,sfxPriorities.combatDamage,3)
			}
			
		}
}