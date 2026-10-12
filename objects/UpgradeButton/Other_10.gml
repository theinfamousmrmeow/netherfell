/// @description Insert description here
// You can write your code in this editor
//if (spendCoins(cost)){
	
	menusClear();
	
	i=instance_create_depth(room_width/4,room_height*(2/3),-9999,YesButton);
	i.upgradeType=upgradeType;
	i=instance_create_depth(room_width*(3/4),room_height*(2/3),-9999,NoButton);
	i=instance_create_depth(room_width/2,room_height*(1/3),-9999,textBox);

	
	i.targetText=string(global.upgrades[upgradeType,upgradeArray.description])+" "+string("\n Buy  for  "+string(global.upgrades[upgradeType,upgradeArray.cost])+"  Coins?"); 
	
	i=instance_create_depth(x,y,-9998,SelectedItem);
	i.image_index=image_index;
	i.xtarget=room_width/2;
	i.ytarget=room_height/2+32;
	
	/*
	Player.hpMax++;
	Player.hp++;
	HUD.hpMax = Player.hpMax;
	HUD.hp = Player.hp;
	*/
	
//}