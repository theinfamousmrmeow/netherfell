/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
levelUpEnemy(1);
//paletteIndex=floor(random(4));
var _level = level;
var _paletteIndex = paletteIndex;
var _id = id;
with (Segment){ if head==_id {levelUpEnemy(_level)}}
with (WyrmBody){ if head==_id {levelUpEnemy(_level)}}