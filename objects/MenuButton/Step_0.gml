/// @description Insert description here
// You can write your code in this editor
switch (state){
	case buttonStates.pressed:
		image_xscale=1.5;
		image_blend=c_gray;
		break;
	
	default:
		//image_xscale=1;
		image_blend=c_white;
	break;
}

image_yscale=image_xscale;

if (image_alpha<1){
	image_alpha+=image_alpha*0.15	
}
else {image_alpha=1;}

pulseAmount = max(0,sin(x+y+(pulseTimer++/10))/6);

if (image_xscale<1){
	image_xscale+=random(1)/10;
	if (image_xscale>1){image_xscale=1;}
	image_yscale=image_xscale;
}

if (disabled){
	image_alpha=0.5;
	image_blend=c_gray;
}