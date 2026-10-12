function bgmPlay(argument0) {
	if (global.volBGM>0){
	global.bgm = audio_play_sound(argument0,sfxPriorities.bgm,true);
	bgmSetVolume(global.volBGM);
	return global.bgm;
	}
	else {return -1;}
}
