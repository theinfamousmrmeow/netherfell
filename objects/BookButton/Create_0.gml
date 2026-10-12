/// @description Insert description here
// You can write your code in this editor
y=(room_height-sprite_height/2)-PADDING;
x=(sprite_width/2)+PADDING;

x=(room_width/2 + ((room_width/2*global.controlsFlip*-1) + (-sprite_width/2*global.controlsFlip*-1))) + global.controlsFlip*PADDING;
//y=(room_height-sprite_height/2)-PADDING;

depth=GUI_DEPTH;

image_speed=0;

	switch (global.currentSpell){

			case MagicMissiles:
				spellIcon=spr_spellbook_magicMissile;
				curSpell=1;
			break;
		
			case ShockShield:
				spellIcon=spr_spellbook_lighteningShield;
				curSpell=2;
			break;	
			case MirrorImage:
				spellIcon=spr_spellbook_mirror;
				curSpell=3;
			break;
	}
