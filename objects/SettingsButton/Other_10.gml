/// @description Insert description here
// You can write your code in this editor

	if (!playerIsDead() && !gameIsPaused() && global.gameState != gameStates.transition){

	pauseGame();

	global.gameState = gameStates.menu;

	//i=instance_create_depth(room_width/2,room_height*(1/4),-9999,textBox);
	//i.targetText ="-Game Paused-";


	}
	else if ( global.gameState != gameStates.transition && gameIsPaused()){
		menusClear();
		global.gameState = gameStates.game;
		unPauseGame();	
	}