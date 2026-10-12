/// @description Insert description here
// You can write your code in this editor
owner = instance_nearest(x,y,Player);
faction=owner.faction;
player = owner;
hspeed = player.hspeed;


			i=instance_create_depth(x-8,y,depth-1,MagicMissile);
			sfxPlayWithVariance(sfxMagicMissile,sfxPriorities.bgm,2);
			i.sprite_index=spr_projectile_special;
			i.owner=owner;
			i.hspeed=hspeed*(2/3);
			//i.image_blend=c_aqua;
			i.faction=faction;
			i=instance_create_depth(x+8,y,depth-1,MagicMissile);
			i.sprite_index=spr_projectile_special;
			i.owner=owner;
			i.hspeed=hspeed*(2/3);
			//i.image_blend=c_aqua;
			i.faction=faction;
instance_destroy();