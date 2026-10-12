event_inherited();

// This achievement requires you to score 180 points to unlock
var percentageCompleted = (100/180) * global.Score;
	
achievement_post("CgkIvN_kkrwKEAIQAw",percentageCompleted);

show_debug_message("Posting " + string(percentageCompleted) + "% progress to achievement_oneundredandeightyyyyy");
global.Score = 0;