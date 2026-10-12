/// @description Insert description here
// You can write your code in this editor

if (!gameIsPaused()){

global.mana+=global.manaRecharge * MANA_RECHARGE_FACTOR;
global.mana = clamp(global.mana,0,global.manaMax);

if (curScore<score){
	curScore+=1;	
}
else {curScore=score;}

if (global.gameState==gameStates.game){
	
	if (!instance_exists(Enemy) && !instance_exists(Pickup) && instance_exists(Player)){
		//Cleared Round
		global.gameState=gameStates.menu;
		global.currentRound++;
		bgmTransition(bgmShop)
		openShopMenu();
		if (global.currentRound==1 || global.currentRound==2) {achievement_post(ACH_FIRST_STEP,100);}
		else if (global.currentRound>=10){achievement_post(ACH_DUNGEONS_DEEP,100);}
		if (global.currentRound>=20){achievement_post(ACH_CAVERNS_OLD,100);}
		if (global.currentRound>=40){achievement_post(ACH_DUNGEON_MASTER,100);}
		//
	}
	
		if (!instance_exists(Enemy)){
		if (instance_exists(Bonus)){
			if (instance_exists(TimeBonus)){
				i=instance_create_depth(room_width/2,room_height/3,-9999,FloatText);

				i.text="Time Clear Bonus + 200";
				i.alarm[0]=100;
				//i.vspeed=-0.1;
				score+=200;
				instance_destroy(TimeBonus);
			}
		}
	}

	if (!instance_exists(Player) && !instance_exists(DeathAnimation)){
		if (global.livesLeft>0){
			i=instance_create_depth(room_width/2,room_height-32,0,Player);
			global.livesLeft--;
		}
		else {
			//Check high scores.
			var hs = getHighScore();
			if (score>hs){
				setHighScore(score);
				
				//push_cancel_local_notification()
			}
			//score=0;
			i=instance_create_depth(x,y,-9999,FX_fadein);
			room_goto(rm_debrief);
			
		}
	}
	if (instance_exists(Player)){
		hp=Player.hp;
		hpMax=Player.hpMax;
	}
	else {hp=0;}
	global.hp=hp;
}
else if (global.gameState==gameStates.menu){
	if (instance_number(MenuButton)==1){
		global.gameState=gameStates.transition;
		Player.xtarget=room_width/2;
		Player.ytarget=-32;
		Player.action=actions.goto;
		//room_restart();
	}
}
}