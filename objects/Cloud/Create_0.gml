/// @description Insert description here
// You can write your code in this editor
speed=random(1)/5;
speed=clamp(speed,0.1,0.4);
image_xscale=1;
image_yscale=image_xscale;
y=16+random(32);
x=random(room_width);
depth=0;
sprite_index=choose(spr_cloud_01,spr_cloud_02);