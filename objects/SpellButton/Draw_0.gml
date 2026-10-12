/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_sprite_ext(spr_button_special_bg,0,x,y,1,1,0,c_white,1);
draw_set_halign(fa_center);
percent = global.mana/global.manaMax;
rectSize=sprite_width*3/4-2;
draw_set_color(c_black);
draw_rectangle(x-rectSize/2,y+rectSize/2,x+rectSize/2,y+rectSize/2-(1*rectSize),false);

draw_set_color(rectColor);



draw_rectangle(x-rectSize/2,y+rectSize/2,x+rectSize/2,y+rectSize/2-(percent*rectSize),false);

draw_sprite_ext(spr_button_special,0,x,y,1,1,0,c_white,1);

draw_set_color(c_white);

draw_text(x,y-4,string(floor(global.mana)));
draw_set_halign(fa_left);