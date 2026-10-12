/// @description Insert description here
// You can write your code in this editor
x = mean(x,x,x,x,xtarget);
y = mean(y,y,y,y,ytarget);

if (image_xscale<1){
	image_xscale+=random(1)/10;
		if (image_xscale>1){image_xscale=1;}
	image_yscale=image_xscale;
}