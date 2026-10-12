function openShopMenu() {
	menusClear();
	var sep=40;

	instance_destroy(Shot,true);
	global.mana = global.manaMax;
	Player.action=actions.goto;
	Player.xtarget=room_width/2;
	Player.ytarget=Player.y;

			xx=room_width/2;
			yy=room_height*(1/3)+16-16;
			instance_destroy(MirrorImage);
			instance_destroy(ShockShields);
			if (!instance_exists(DoorButton)){
			var i=instance_create_depth(xx,32+16,-9999,DoorButton);
			}
			yy+=sep;
			for (var count=0;count<NUM_SHOP_ITEMS;count++){
				
				rowWidth=3;
				xx= room_width/2 - sep;
				column = count mod rowWidth;
				row=count div rowWidth;
				if (row mod 2 == 1){xx+=sep/2;}
				//global.upgrades[upgrades.shockSpell,upgradeArray.level]=-1;
				if ((count==upgrades.hpRefill || count==upgrades.hpUp || count==upgrades.mpUp) ||
				((count==upgrades.mirrorImage || count == upgrades.shockSpell) && global.upgrades[count,upgradeArray.level]==-1)){
					i=instance_create_depth(xx+column*sep,yy+row*sep,-9999,UpgradeButton);
					initUpgradeButton(i,count);
				}
				

			}
		
		
	if (!instance_exists(ShopGoblin)){
		i=instance_create_depth(0,-100,-100,RearWall);
		i.x=room_width-i.sprite_width/2;
		instance_create_depth(room_width+32,room_height*0.25,-9999,ShopGoblin);	
		
		//Create Rallex if ad is available
		if (instance_exists(AdBitch) && (AdBitch.rewarded_loaded || os_type == os_windows)){
			instance_create_depth(room_width+32,room_height*0.25,-9999,GambleRallex);	
		}
		
	}

	i=instance_create_depth(room_width/2,room_height*(1/3),-9999,shopTextBox);
	i.targetText=choose(
	"Buy somethin' will ya!",
	"PLEASE BUY THINGS!",
	"If ya like it, buy it!",
	"What're ya buyin!?");


}
