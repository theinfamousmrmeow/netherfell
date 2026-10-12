
init();
if (global.ads || !global.hasPremiumKey){
	if (!instance_exists(AdBitch)){
		i=instance_create_depth(0,0,0,AdBitch);	
	}
}