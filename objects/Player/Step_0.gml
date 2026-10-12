/// @description Insert description here
// You can write your code in this editor
event_inherited();
scr_zphysics();
if (global.gameState==gameStates.game){
	if (hp>0){

	if (action!=actions.hurt && action!=actions.goto){


		if (keyboard_check(vk_left)){inputDirection=180;}
		else if (keyboard_check(vk_right)){inputDirection=0;}

		if (keyboard_check(vk_space)){inputA=true;}
		if (keyboard_check_pressed(vk_lcontrol)){inputB=true;}
		if (global.controls==controlTypes.tap){
			if (distance_to_point(xtarget,y)>1){inputDirection=point_direction(x,y,xtarget,y);}else{inputDirection=-1;}
		}
		if (inputDirection!=-1){
			direction=inputDirection
			speed=1;
			image_xscale=sign(hspeed)*1;
		}
	
		if (inputB){
			
			if (global.currentSpell==MirrorImage){
				
				if (instance_exists(MirrorImage)){
					with (MirrorImage){instance_destroy();}
				}
				else if (spendMana(1)){
					var dist = x - room_width/2;
					i=instance_create_depth(room_width/2 + (dist*-1),y,depth,MirrorImage);
					i.base=id;
				}
			}
			else if (spendMana(1)){
				i=instance_create_depth(x,y-4,-9999,global.currentSpell);
				i.base=id;
				if (instance_exists(MirrorImage)&&spendMana(1)){
					i=instance_create_depth(MirrorImage.x,MirrorImage.y-4,-9999,global.currentSpell);
					i.base=MirrorImage.id;
				}
			}
			canShoot=false;

			alarm[0]=rof;
		}
	
		else if (inputA){
		
			if (canShoot){
			
			i=instance_create_depth(x,y,depth-1,Fireball);
			sfxPlayWithVariance(sfxWizardShoot,sfxPriorities.combatAttacking,3);
			i.owner=id;
			i.faction=faction;
			
			with (MirrorImage){
				i=instance_create_depth(x,y,depth-1,Fireball);
				i.owner=id;
				i.faction=faction;
			}
			
			
			canShoot=false;
			alarm[0]=rof;
		
			}
		}


		if speed>0{image_speed=0.25} else {image_speed=0; image_index=0;}

		if (canShoot){
			sprite_index=spr_wizard_walk;
		}
		else {sprite_index=spr_wizard_walk_up;}

	}
	else if (action==actions.hurt){sprite_index=spr_wizard_hurt;}
	
	inputDirection=-1;
	inputA=0;
	inputB=0;
	}
}
if (action==actions.goto){
	
	if (y<200 && !instance_exists(FX_fadeout)){i=instance_create_depth(x,y,-9999,FX_fadeout);}
	if (y<100){
		y=room_height+32;
		action=actions.goto;
		ytarget=room_height-PLAYER_OFFSET;
		global.gameState=gameStates.game;
		zspeed=1.5;
		room_restart();
	
		i=instance_create_depth(x-8,y-16,0,FlyingDoor);
		i=instance_create_depth(x+8,y-16,0,FlyingDoor);
		i.image_xscale=-1;
	
	}
		
	sprite_index=spr_wizard_walk_up;
	if (distance_to_point(xtarget,ytarget)>2){
	dir = point_direction(x,y,xtarget,ytarget);
	motion_add(dir,0.25);
	speed = clamp(speed,0,2);
	///move_towards_point(xtarget,ytarget,sp);
	
		}
	else {
		x=xtarget; y=ytarget;
		image_xscale=1; image_speed=0; image_index=0; action=actions.idle;
		speed=0;
		}

	if (hspeed!=0){
		image_xscale=sign(hspeed);
	}
	if (speed>0.1){image_speed=0.25;}else {image_speed=0; image_index=0;}
	if (speed>=2 && z==0){
		spawnParticleAbove(x+random(16)-8,y+8,global.p_dust,1);
	}

}


facing=image_xscale;