///@arg soundID
///@arg priority
///@arg varianceWidth smaller is wider
function sfxPlayWithVariance(argument0, argument1, argument2){
	var s = audio_play_sound(argument0,argument1,0);
	
	audio_sound_pitch(s,(((random(1))/(argument2))+(1-(1/(2*(argument2))))));
	return s;	
}