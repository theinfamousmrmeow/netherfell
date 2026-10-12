/// @description Insert description here
// You can write your code in this editor
if (chestState==actions.closing){
	audio_play_sound(sfxDoorClose,0,0);
	chestState=actions.opening;
	alarm[2]=24;
	zspeed=1.5;
	jitter=3;
}