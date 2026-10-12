/// @description Insert description here
// You can write your code in this editor


if (z>0){
	image_angle=sin(current_time/250)*5;
}
else {image_angle=0;}

if (zspeed!=0 && z+zspeed<=0){
		var n = 32;
		var factor = 360/n;
		for (var i=0;i<n;i++){
			screenShake(5);
			var ind = global.p_dust;
			dir = i * (factor);
			part_type_direction(ind,dir,dir,0,45);
			part_type_speed(ind,1,2,-0.05,0);
			spawnParticle(x,y,global.p_dust,1);	
		}
	if (zspeed<=Z_TERMINAL_VELOCITY*(1/2)){
		zspeed*=-0.5;
	}
	else {

	}
}

scr_zphysics();