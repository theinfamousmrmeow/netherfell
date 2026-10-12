/// @description Insert description here
// You can write your code in this editor
	i=instance_create_depth(x,y,-9999,FX_fadein);
	i=instance_create_depth(room_width/2,room_height*(1/3),-9999,textBox);
	i.alarm[11]=64;
	i.targetText="Room "+string(global.currentRound)+"!";
	
	global.gameState = gameStates.game;