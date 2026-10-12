/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

text = string(baseText) + ": "+string(count);
if (action!=actions.spawning){
	if (count<targetCount){count = floor(mean(count,count,count,count,count,count,count,count,targetCount))+1}
	if (count>targetCount){count=targetCount;}
	
}