/*
Genericized local High-score scripts.
*/


function getDailyScore(){
 ini_open("scores.ini");
 var s = ini_read_real("DailyHigh","daily",0);
 ini_close();
 return s;
}

///@param {real} newDailyScore
function setDailyScore(){
 ini_open("scores.ini");
 ini_write_real("DailyHigh","daily",argument0);
 ini_write_real("DailyHigh","datestamp",date_current_datetime());
 ini_close();
 return s;
}

function getHighScore(){
 ini_open("scores.ini");
 var s = ini_read_real("High","high",0);
 ini_close();
 return s;
}

///@param {real} newHighScore The new high score to save.
function setHighScore(){
	 ini_open("scores.ini");
	 ini_write_real("High","high",argument0);
	 ini_close();
}

///@function isNewHighScore(score)
///@param {real} score The score to be compared.
function isNewHighScore(){
	return (getHighScore()<argument0);	
}