/// @description Insert description here
// You can write your code in this editor
			var numShields=3;
			audio_play_sound(sfxLightningShieldDeploy,sfxPriorities.combatAttacking,0);
			
			var _base = base//instance_nearest(x,y,Player);
			faction = _base.faction;
			
			with (ShockShields){if (_base == base){hp=0; instance_destroy();}}


			
			
			dir=90-30;
			
			for (var ii=0;ii<numShields;ii++){
				i=instance_create_depth(x,y-4,-9999,ShockShields);
				i.faction=faction;
				i.base=_base;
				var len = 24;
				
				i.yoffset = lengthdir_y(len,dir);
				i.xoffset = lengthdir_x(len,dir);
				dir+=30;
			}
			
			
			instance_destroy();