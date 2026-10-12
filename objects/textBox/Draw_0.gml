/// @description Insert description here
// You can write your code in this editor
draw_set_color(image_blend);
draw_set_halign(fa_center);

draw_text_ext_transformed_color(x+1,y+1,text,16,room_width*(2/3),image_xscale,image_yscale,image_angle,c_blue,c_blue,c_purple,c_purple,image_alpha/2);

draw_text_ext_transformed_color(x,y,text,16,room_width*(2/3),image_xscale,image_yscale,image_angle,c1,c2,c3,c4,image_alpha);

h = string_height_ext(text,16,room_width*(2/3))
w = string_width_ext(text,16,room_width*(2/3))/2

//draw_sprite_ext(spr_runes,0,x+w,y+h,1,1,0,c_white,1);

draw_set_halign(fa_left);