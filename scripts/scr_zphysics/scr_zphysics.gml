function scr_zphysics() {
	if (z>0 || zspeed!=0){
	    z+=zspeed;
		friction=0;
	    zspeed-=zgrav;
	    if (zspeed<Z_TERMINAL_VELOCITY){zspeed=Z_TERMINAL_VELOCITY;}
	    if(z<0){z=0; zspeed=0;}
	}
	else {friction=0.1;}



}
