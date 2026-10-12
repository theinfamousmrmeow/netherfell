/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(image_alpha);
draw_set_color(image_blend);
var rand=random(1);
draw_circle(x,y,radius*(random(1)+1),0);
draw_rectangle(x-radius-rand,0,x+radius+rand,y+4,false);
draw_set_alpha(1);
draw_set_color(c_white);