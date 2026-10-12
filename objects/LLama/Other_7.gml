/// @description Insert description here
// You can write your code in this editor
if (action==actions.animating || action==actions.closing){
	action=actions.idle;
	image_index=0;
	image_speed=0;
	sprite_index=Spr_llama_idle;
}
else if (action==actions.opening){
	image_speed=0;
	image_index=image_number-1;
}