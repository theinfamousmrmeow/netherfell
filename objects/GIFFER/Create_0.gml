/// @description Insert description here
// You can write your code in this editor
GUI = surface_create(display_get_gui_width(),display_get_gui_height());
	count=0;
	save_gif=true;
	frameSkip=0;
	
if (instance_number(GIFFER)>1){
	with (GIFFER){count=0;}
	instance_destroy();}