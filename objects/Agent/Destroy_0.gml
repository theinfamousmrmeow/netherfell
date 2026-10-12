/// @description Insert description here
// You can write your code in this editor
if (hp<=0){
	score+=worth;
	if (worth>0){
		i=instance_create_depth(x,y,-9999,FloatText);
		i.text=worth;
	}
}