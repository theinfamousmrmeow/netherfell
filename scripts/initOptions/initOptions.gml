// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initOptions(){
	ini_open("settings.ini");
	
	global.controls = ini_read_real("Controls","type",controlTypes.drag);
	global.controlsFlip = ini_read_real("GUI","buttonPosition",1);
	global.volBGM = ini_read_real("Audio","volBGM",1);
	global.HUDOpacity = ini_read_real("GUI","opacity",1);
	
	ini_close();
}