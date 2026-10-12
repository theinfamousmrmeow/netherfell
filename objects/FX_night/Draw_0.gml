/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.1);

draw_set_color(c_orange);
gpu_set_blendmode(bm_subtract);
//draw_rectangle(0,0,room_width,room_height,0);
//draw_sprite_stretched_ext(spr_torchlight,0,0,0,room_width,room_height,image_blend,image_alpha);
gpu_set_blendmode(bm_normal);


gpu_set_blendmode(bm_subtract)
draw_rectangle(0,0,room_width,room_height,0);
gpu_set_blendmode(bm_normal);

draw_set_alpha(1);