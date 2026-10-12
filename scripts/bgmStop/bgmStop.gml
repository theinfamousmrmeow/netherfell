function bgmStop() {
	audio_stop_sound(global.bgm);
	audio_stop_sound(bgmTitle)
	audio_stop_sound(bgmBattle);
	audio_stop_sound(spellSlinger);
	global.bgm=-1;
}
