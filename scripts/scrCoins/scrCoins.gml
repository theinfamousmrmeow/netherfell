// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getCoins(){
	ini_open("inventory.ini");
	global.coins=ini_read_real("Money","coins",0);
	ini_close();
	return global.coins;
}
///@param coinsToAdd
function addCoins(){
	global.coins+=argument0;
	setCoins();
}
function setCoins(){
	ini_open("inventory.ini");
	ini_write_real("Money","coins",global.coins);
	ini_close();
}
///@param Cost
function spendCoins(argument0){

	if (global.coins>=argument0){
		global.coins-=argument0;
		setCoins();
		return true;
	}
	else return false;

	
}
