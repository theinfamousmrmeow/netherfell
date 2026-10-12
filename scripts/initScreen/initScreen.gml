////VIEWPORT FUCKERY
///@param views
function initScreen(argument0) {

	if (argument0==1){

		var base_w = 144//768/8;
		var base_h = 256//1024/8;
		var max_w = display_get_width();
		var max_h = display_get_height();
		var aspect = display_get_width() / display_get_height();
		if (max_w < max_h)
		    {
		    // portait
		     var VIEW_WIDTH = min(base_w, max_w);
		    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
		    }
		else
		    {
		    // landscape
		    var VIEW_HEIGHT = min(base_h, max_h);
		    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
		    }
		camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
		view_wport[0] = max_w;
		view_hport[0] = max_h;
		surface_resize(application_surface, view_wport[0], view_hport[0]);

		display_set_gui_size(display_get_width() / 2, display_get_height() / 2);
		camera_set_view_size(view_camera[0],VIEW_WIDTH,VIEW_HEIGHT);
		camera_set_view_border(view_camera[0],floor(VIEW_WIDTH)/2,floor(VIEW_HEIGHT)/2);
		//display_set_gui_maximise(1, 1, 0, 0);
		display_reset(0, false);

		if !view_enabled
		    {
		    view_visible[0] = true;
		    view_enabled = true;
		}
	}

	if (argument0==2){
		show_debug_message("TWO SCREENZ")
		var base_w = 1024/4;
		var base_h = 768/4;
		var max_w = display_get_width();
		var max_h = display_get_height();
		var aspect = display_get_width() / display_get_height();
		if (max_w < max_h)
		    {
		    // portait
		     var VIEW_WIDTH = min(base_w, max_w);
		    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
		    }
		else
		    {
		    // landscape
		    var VIEW_HEIGHT = min(base_h, max_h);
		    var VIEW_WIDTH = VIEW_HEIGHT * aspect / 2;
		    }
		camera_set_view_size(view_camera[0], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
		camera_set_view_size(view_camera[1], floor(VIEW_WIDTH), floor(VIEW_HEIGHT))
		view_wport[0] = max_w/2;
		view_hport[0] = max_h;
		view_wport[1] = max_w/2;
		view_xport[1] = max_w/2;
		view_hport[1] = max_h;
		surface_resize(application_surface, view_wport[0]*2, view_hport[0]);
		display_set_gui_size(display_get_width() / 2, display_get_height() / 2);
		camera_set_view_border(view_camera[0],floor(VIEW_WIDTH)/2,floor(VIEW_HEIGHT)/2);
		camera_set_view_border(view_camera[1],floor(VIEW_WIDTH)/2,floor(VIEW_HEIGHT)/2);
		display_reset(0, false);

		    view_visible[0] = true;
			view_visible[1] = true;

		if !view_enabled
		    {
		    view_visible[0] = true;
			view_visible[1] = true;
		    view_enabled = true;
		}

	}


}
