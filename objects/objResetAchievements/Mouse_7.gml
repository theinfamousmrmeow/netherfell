event_inherited();

show_debug_message("!! Resetting all achievements to 0 percent completed !!");

// Per the manual:
// This function is provided as a debug function and it is NOT recommended 
// that you permit the end-user to do this in your games.
achievement_reset();


// The above function doesn't seem to do anything on Google Play now (at least on an Internal Track release), nor does this
//achievement_post("CgkIvN_kkrwKEAIQAQ",0);
//achievement_post("CgkIvN_kkrwKEAIQAw",0);
//achievement_post("CgkIvN_kkrwKEAIQAg",0);