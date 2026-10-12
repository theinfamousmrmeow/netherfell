/// @description Insert description here
// You can write your code in this editor
initStats();
	menusClear();
	global.gameState = gameStates.game;
	unPauseGame();	
	
	bgmStop();
	
room_goto(rm_title);