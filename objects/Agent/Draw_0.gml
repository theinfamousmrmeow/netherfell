/// @description Insert description here
// You can write your code in this editor



if (jitter>0){
	gpu_set_fog(1,c_white,0,0);
}
else if (palette!=-1){
	pal_swap_set(palette,paletteIndex,0)	
}
	draw_sprite_ext(sprite_index,image_index,x+xx,y+yy-z,facing,image_yscale,image_angle,image_blend,image_alpha);

if (jitter>0){
	gpu_set_fog(0,c_white,0,0);
}
else if (palette!=-1){
	pal_swap_reset();
}
