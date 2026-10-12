/// @description Insert description here
// You can write your code in this editor
if (action=actions.closing){
	if (image_yscale>0.2){image_yscale-=0.1;}
	else {instance_destroy();}
}
else if (action=actions.spawning){
	if (image_yscale<1){image_yscale+=0.1;}
	else {action=actions.idle}
}