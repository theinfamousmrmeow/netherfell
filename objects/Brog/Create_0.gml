/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
sp=0.5
//hspeed=sp;
friction=0.1
hp=2;
worth=20;
direction=0;
damageSfx=sfxBrogDamage;
action=actions.idle;
deathPop=sfxMediumDeathPop;	
alarm[0]=random(40);
alarm[1]=random(400);

palette = spr_brog_palette;
paletteIndex = floor(random(sprite_get_width(palette)));

//Level Up Chance
maxLevel =  floor(global.currentRound/3);
minLevel = floor(global.currentRound/6);

level = min(irandom_range(minLevel,maxLevel),3);

levelUpEnemy(level);