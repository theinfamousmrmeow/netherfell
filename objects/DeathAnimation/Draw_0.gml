/// @description Insert description here
// You can write your code in this editor
var draw_x=x;
var draw_y=y;
draw_sprite_part_ext(sprite_index,image_index,0,top,w,h,draw_x-sprite_get_xoffset(sprite_index)*xscale,top+draw_y-sprite_get_yoffset(sprite_index)+4,xscale,image_yscale,image_blend,image_alpha);
//draw_sprite_part_ext(sprite_index,image_index,0,top,w,h,x+abs(sprite_get_xoffset(sprite_index)),y+top-sprite_get_yoffset(sprite_index),xscale,image_yscale,c_white,image_alpha);