/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_text_ext_transformed_color(x+1,y+1+textOffset,text,16,128,image_xscale,image_yscale,image_angle,c_blue,c_blue,c_purple,c_purple,image_alpha/2);

draw_text_ext_color(x,y+textOffset,text,16,128,c_white,c_white,c_aqua,c_aqua,image_alpha);

draw_set_color(c_white);
draw_set_halign(fa_left);