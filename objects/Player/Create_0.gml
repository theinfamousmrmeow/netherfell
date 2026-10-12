/// @description Insert description here
// You can write your code in this editor
event_inherited();
faction=1;

friction=0.1;

canShoot=true;
rof=36;

inputDirection=-1;
inputA=0;
inputB=0;

mouse_xprevious=mouse_x;
mouse_yprevious=mouse_y;

hp=global.hp;
hpMax=global.hpMax;

xtarget=x;
ytarget=y;

y=room_height-PLAYER_OFFSET;

scr_initz();

gesture_double_tap_time(0);