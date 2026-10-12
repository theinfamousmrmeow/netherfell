/// @description Insert description here
// You can write your code in this editor
//surface_reset_target();

	surface_reset_target()
	draw_surface_ext(GUI,0,0,1,1,0,c_white,1);
	surface_set_target(application_surface);
	draw_surface_ext(GUI,0,0,1,1,0,c_white,1);
	surface_reset_target();

	if save_gif == true
	{
	if count == 0
	    {
	    gif_image = gif_open(camera_get_view_width(0), camera_get_view_height(0));
		count++;
	    }
	else if count < 85
	    {
			if (frameSkip==0){

			gif_add_surface(gif_image, application_surface,  6/100);
			//gif_add_surface(gif_image, view_surface_id[0],6/100);
			frameSkip=1;
			count++;
			}
			else {
				frameSkip++;
				if (frameSkip==4){frameSkip=0;}
			}
	    }
	else
	    {
	    gif_save(gif_image, string(get_timer())+string(random(100))+".gif");
	    instance_destroy();
	    }

	}
