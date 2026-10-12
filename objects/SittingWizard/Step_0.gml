/// @description Insert description here
// You can write your code in this editor
if (speed!=0){
	if (vspeed<0.1){
		//Upwards
		sprite_index=spr_wizard_walk_up;
	}
	else {sprite_index=spr_wizard_walk;}
	
	if (hspeed!=0){
		image_xscale=sign(hspeed);	
	}
	
}