/// @description Insert description here
// You can write your code in this editor
if (action=actions.spawning){
	image_xscale*=1.1;
	if (image_xscale>=1){
		action=actions.closing;
		image_xscale=1;
	}
	image_yscale=image_xscale;	
}

if (action=actions.closing){
	image_alpha*=0.95;
	if (image_alpha<=0.1){instance_destroy();}
}