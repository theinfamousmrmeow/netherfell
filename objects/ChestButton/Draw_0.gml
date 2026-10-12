/// @description Insert description here
// You can write your code in this editor
drawShadow();
// Inherit the parent event
draw_sprite_ext(sprite_index,image_index,x+random(jitter)-jitter/2,y-z+jitter+random(jitter)-jitter/2,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
