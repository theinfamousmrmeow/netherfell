
init();

repeat(80){
	xx=random(floor((room_width-32)/16))*16+8;
	yy=random(room_height);
	repeat(ceil(random(3))+2){
		if (place_empty(xx,yy)){
			i=instance_create_depth(xx,yy,0,FX_matrixrune);
					yy+=9;
		}

	}
}
