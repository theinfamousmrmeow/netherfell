event_inherited();

// This achievement requires you to score 100 points to unlock (so our score IS the percentage...)
var percentageCompleted = global.Score;
	
achievement_post("CgkIvN_kkrwKEAIQAQ",percentageCompleted);
	
show_debug_message("Posting " + string(percentageCompleted) + "% progress to achievement_done_the_tonne");
global.Score = 0;