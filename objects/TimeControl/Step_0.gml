/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(Title)){
	//if (global.time<2380){global.time+=20;}
	if (global.time>=2400){global.time-=2400;}
	if (keyboard_check(vk_space)){global.time+=10;}
}