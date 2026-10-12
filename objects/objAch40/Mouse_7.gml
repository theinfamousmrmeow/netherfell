event_inherited();

// This achievement requires you to score 40 points to unlock
var percentageCompleted = 0;

if (global.Score >= 40) { percentageCompleted = 100; }
else { percentageCompleted = global.Score * 2.5; }
	
achievement_post("CgkIvN_kkrwKEAIQAg",percentageCompleted);

show_debug_message("Posting " + string(percentageCompleted) + "% progress to achievement_double_top");
global.Score = 0;