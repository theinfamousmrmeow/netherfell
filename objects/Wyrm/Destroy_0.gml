/// @description Insert description here
// You can write your code in this editor
var _id=id;

if (hp<=0){
	sfxPlay(sfx_beast_roar);	
}

with (Segment){
		if (head==_id){
			hp=0;
			instance_destroy();
		}	
}
with (WyrmBody){
		if (head==_id){
			hp=0;
			instance_destroy();
		}	
}
// Inherit the parent event
event_inherited();

