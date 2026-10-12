/// @description Insert description here
// You can write your code in this editor
if (action==actions.attacking){

i=instance_create_depth(x+lengthdir_x(12,beamdir)*facing,y+lengthdir_y(12,beamdir),-9998,Shot);
i.sprite_index=spr_projectile_beam;
sfxPlayWithVariance(sfxEyegoyleLaser,sfxPriorities.bgm,3);
i.direction=beamdir;
i.speed=1;
i.hspeed*=facing;
i.image_angle=i.direction;
i.mask_index=spr_projectile_beam;
beamdir+=20

alarm[2]=10;

}