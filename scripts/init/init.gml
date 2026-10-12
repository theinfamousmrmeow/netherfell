function init(){
	global.currentRound=1;
	initParticles()
	initFonts();

	global.livesLeft=0;
	global.mana = 3;

	global.manaRecharge = 1;//Multiplied by MANA_RECHARGE_FACTOR
	
	initStats();
	
	//global.score=0;
	global.coins=getCoins();
	global.time=1200;
	global.gameState=gameStates.game;
	global.paused=0;
	macros();
	initBGM();
	
	initOptions();
	global.currentSpell = MagicMissiles;
	//global.ads=true;
	//global.hasPremiumKey=false;
	pal_swap_init_system(shd_pal_swapper,-1,-1)

}