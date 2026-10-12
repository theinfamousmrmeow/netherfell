/// @description Insert description here
// You can write your code in this editor

var r = 20+sin(timer/4);


draw_set_alpha(0.5 + sin(timer/4)/20);
draw_circle_color(x,y,r,c_yellow,c_white,0);
draw_set_alpha(1);


event_inherited();