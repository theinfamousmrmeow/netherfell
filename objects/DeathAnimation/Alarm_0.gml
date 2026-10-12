/// @description Insert description here
// You can write your code in this editor
burnUp=true;
screenShake(5);
if (burnUp){
	top+=1;
	
	if (top>=bottom){instance_destroy();}
	spawnParticleAbove(x+random(w)-w/2,-2+y+top,global.p_ember,1);
	spawnParticleAbove(x+random(w)-w/2,-2+y+top,global.p_ember,1);
	spawnParticleAbove(x+random(w)-w/2,-2+y+top,global.p_ember,1);
	spawnParticleAbove(x+random(w)-w/2,-2+y+top,global.p_ember,1);
}

alarm[0]=4;