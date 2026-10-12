/// @description Insert description here
// You can write your code in this editor
if (state == buttonStates.idle && !disabled){
	audio_play_sound(tapSound,sfxPriorities.bgm,0);

	state = buttonStates.pressed;
	alarm[0]=4;
}

