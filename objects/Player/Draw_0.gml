/// @description Insert description here
// You can write your code in this editor
if (global.controls==controlTypes.tap){
	if (hspeed!=0){
	//draw move indicator
	draw_sprite_ext(spr_pointer_move_small,current_time/100,xtarget,y,1,1,0,c_white,1);
	}
}
// Inherit the parent event
drawShadow();
event_inherited();



