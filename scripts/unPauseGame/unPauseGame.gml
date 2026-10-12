// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unPauseGame(){

	global.paused=false;
	instance_activate_all()
	with (BookButton){	
	instance_destroy();}
	with (SpellButton){
	instance_destroy();}
	instance_create_depth(0,0,GUI_DEPTH,BookButton);
	instance_create_depth(0,0,GUI_DEPTH,SpellButton);	
	if !(instance_exists(SettingsButton)){
		//instance_create_depth(x,y,-9999,SettingsButton);	
	}
	
}