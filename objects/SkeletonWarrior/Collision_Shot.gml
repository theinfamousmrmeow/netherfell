/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if (action==actions.defending){
	if (other.faction!=faction){
		sfxPlayWithVariance(sfxSkeleReflect,sfxPriorities.combatAttacking,3)
		other.faction=faction;
		other.direction=270;
		other.speed/=2;
		if (other.speed<1){other.speed=1;}
	}
}
else {

	event_inherited();

}