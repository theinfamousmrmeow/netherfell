/// @description Insert description here
// You can write your code in this editor


//Perform the purchase...
if (spendCoins(global.upgrades[upgradeType,upgradeArray.cost])){
	global.upgrades[upgradeType,upgradeArray.level]+=1;
	

	switch(upgradeType){
		case upgrades.hpUp:
			Player.hpMax++;
			global.hp++;
			global.hpMax++;
			Player.hp++;
			HUD.hpMax=Player.hpMax;
		break;

		case upgrades.hpRefill:
			Player.hp=Player.hpMax;
			global.hp=global.hpMax;
		break;
			
		case upgrades.mpUp:
			global.manaMax+=1;
		break;
		
		case upgrades.shockSpell:
			global.currentSpell=ShockShield;
		break;
		//case upgrades.mii
			global.currentSpell=MirrorImage;
		break;
			
		break;
	}
	HUD.hpMax=Player.hpMax;
	HUD.hp=Player.hp;
	
	openShopMenu();

}

else {
	audio_stop_sound(sfxMenuConfirm);
	
	audio_play_sound(sfxBell2,0,0);
	//with (
	with (textBox){instance_destroy();}
	with (NoButton){instance_destroy();}
	with (SelectedItem){instance_destroy();}
	screenShake(5);
	i=instance_create_depth(room_width/2,room_height*(1/2),-9998,textBox);
	if (global.coins>1) i.targetText = "Hey! You only have "+string(global.coins)+" coins, cheapskate!";
	else if (global.coins==1) {i.targetText = "You can't buy things with 1 coin!";}
	else if (global.coins==0) {i.targetText = "Hey, you're broke!  You can't buy anything!";}
	i.alarm[10]=100;
	
	with (YesButton){instance_destroy();}
}


