/// @description Throw bones!
if (canShoot && action!=actions.hurt && action!=actions.defending){
	i=instance_create_depth(x,y-4,-1000,Bone);
	canShoot=false;
	alarm[2]=90+random(80);
	i.faction=faction;
	i.direction=270;
	//i.image_angle=45;
	i.attached=id;

}
alarm[1]=200;