// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getLastLogin(){
	ini_open("records.ini");
	var str=ini_read_string("timestamps","lastLogin","1/1/1970")
	ini_close();
	return str;
}

function updateLastLogin(){
	ini_open("records.ini");
	ini_write_string("timestamps","lastLogin",
	date_date_string(date_current_datetime()));
	
		show_debug_message("Updated last login to:  "+date_date_string(date_current_datetime()));
	
	//Assertion for sanityd
	if (!date_is_today(date_current_datetime())){
		show_debug_message("ERROR:  Today is not Today");
	}
	
	ini_close();
}

function parseTimestamp(){
	//lastLogin="9/3/2020"
	var array = argument0;
	var today = date_current_datetime();
	var year = array[2];
	//Android likes to give a 2 digit year sometimes.
	if (string_length(year)==2){
		year = "20"+year;}
	var lastTimestamp = date_create_datetime(year, array[0], array[1], date_get_hour(today),date_get_minute(today), date_get_second(today));
	return lastTimestamp;
}

function lastLoginWasToday(){
	var lastLogin = parseTimestamp(splitString(getLastLogin(),"/"));
	return (date_is_today(lastLogin))
}