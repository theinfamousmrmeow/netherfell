/// @description Insert description here
// You can write your code in this editor
if (action==actions.hurt){
	action = actions.defending;	
	alarm[11]=100;
}
else {
// Inherit the parent event
event_inherited();

}