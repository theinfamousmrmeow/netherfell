repeat(20){
	xx=random(floor((room_width-32)/16))*16+8;
	yy=random(room_height);
	repeat(ceil(random(3))+2){
		if (place_empty(xx,yy)){
			i=instance_create_depth(xx,yy,0,FX_matrixrune);
					yy+=9;
		}

	}
}

var _items = getAllItems();



while (!ds_stack_empty(_items)){
	
	xx = room_width/2-32;
	yy = room_height*(2/3);
	i=instance_create_depth(xx,yy,-9998,Item);
	var name = ds_stack_pop(_items);
	i._name = name;
	name = string_replace_all(name,"_"," ");
	i.text = name;
	
}

ds_stack_destroy(_items);