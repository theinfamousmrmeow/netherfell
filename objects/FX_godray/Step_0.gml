/// @description Insert description here
// You can write your code in this editor
if (radius<maxRadius){radius*=1.1;
	image_blend=choose(c_white,c_yellow);
	}
else{
	image_alpha*=0.9
	if (image_alpha<0.01){instance_destroy();}
}