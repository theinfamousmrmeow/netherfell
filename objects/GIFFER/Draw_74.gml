

	if (!surface_exists(GUI)) GUI = surface_create(display_get_gui_width(),display_get_gui_height());
	surface_set_target(GUI);
	//draw_clear(c_white);
	draw_clear_alpha(c_white,0);
