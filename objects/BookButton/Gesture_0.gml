/// @description Insert description here
// You can write your code in this editor
image_speed=0.5;
image_index=0;

curSpell++;

repeat(4){
	switch (curSpell){
			case 1:
			case 4:
				global.currentSpell=MagicMissiles;
				curSpell=1;
				spellIcon=spr_spellbook_magicMissile;
			break;
		
			case 2:
			if (spellIsUnlocked(ShockShield)){
				global.currentSpell=ShockShield;
				spellIcon=spr_spellbook_lighteningShield;
			}
			else curSpell++;
			break;	
			case 3:
			if (spellIsUnlocked(MirrorImage)){
				global.currentSpell=MirrorImage;
				spellIcon=spr_spellbook_mirror;
			}
			else curSpell++;
			break;
	}
}