/// @description Insert description here
// You can write your code in this editor
	coins = ceil(random(5))+5 + (global.hasPremiumKey*5);
	audio_play_sound(sfxItemGet,0,0);
	jitter=0;
	i=instance_create_depth(x,y,depth,chestItem);
	i.text = "Coins x "+string(coins);
	i.sprite_index=spr_treasure;
	i.xtarget=room_width/2;
	i.ytarget=room_height/2;
	
	i=instance_create_depth(x,y,depth-1,FX_godray);
	chestState=actions.idle;
	addCoins(coins);
	//alarm[1]=80;
	image_index=1;
	i=instance_create_depth(room_width*1/2,room_height*(1/3)+8,-9998,textBox);
	i.targetText = "You got:";
	//i.alarm[11]=120;
	
	instance_create_depth(room_width/2,room_height*(3/4)+16,-9998,AcceptButton);