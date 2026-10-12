/// @description Insert description here
// You can write your code in this editor
image_angle+=5*image_xscale;
scr_zphysics()
if (z==0){
	spawnParticle(x,y,global.p_wool,10);
	direction+=random(60)-30;
	direction = clamp(direction,90-45,90+45);
	speed*=0.75;
		if (speed<=2){explodeIntoChunks(); instance_destroy();}
	speed=max(1,speed);
	z=1;
	zspeed=2;

}
