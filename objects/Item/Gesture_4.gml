/// @description Insert description here
// You can write your code in this editor
var slot = instance_nearest(x,y,EquipSlot);

if (distance_to_object(slot)<24){
	with (Item){
		if (mySlot == slot){
			
			mySlot=-1;
			xtarget=xstart;
			ytarget=ystart;
		}
	}
	audio_play_sound(sfxMenuConfirm,0,0);
	screenShake(4);
	mySlot = slot;
	xtarget = slot.x;
	ytarget = slot.y;
	

	
}
else {
	audio_play_sound(sfxBell2,0,0);
	xtarget = xstart; ytarget=ystart;
	}