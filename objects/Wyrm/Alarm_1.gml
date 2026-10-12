/// @description Insert description here
// You can write your code in this editor
alarm[1]=200+random(40);
if (action==actions.attacking){
	//Shoot
	sfxPlayWithVariance(sfxWyrmBreath,sfxPriorities.bgm,4);
	var shots=5;
	arc = 130
	;
	each = arc / (shots-1);
	
	for (var k=0;k<shots;k++){
		
	i=instance_create_depth(x,y,-9999,Shot);
	i.direction= (270 - (arc/2)) + each * k;
	i.speed=1;
	i.faction=faction;
	}
	
	action=actions.idle;
	alarm[1]=150+random(40);
}

else if (action==actions.attackPreparing){
	action=actions.attacking;
	alarm[1]=12;
}

else if (action==actions.idle){
	action=actions.attackPreparing;
	alarm[1]=40;
}