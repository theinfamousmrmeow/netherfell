function setTimestamp(){
	ini_open("inventory.ini");
	var str = date_time_string(date_current_datetime());
	ini_write_string("Timestamps","lastPlayerd",str);
	
	ini_close();
}