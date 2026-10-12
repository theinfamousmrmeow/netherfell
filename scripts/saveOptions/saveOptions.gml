// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveOptions(){
	ini_open("settings.ini");
	
	ini_write_real("GUI","buttonPosition",global.controlsFlip);
	ini_write_real("Audio","volBGM",global.volBGM);
	ini_write_real("Controls","type",global.controls);
	ini_read_real("GUI","opacity",global.HUDOpacity);
	
	ini_close();
}