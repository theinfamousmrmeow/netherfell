function spendMana(argument0) {
	if (global.mana>=argument0){
		global.mana-=argument0;
		return true;
	}
	else return false;


}
