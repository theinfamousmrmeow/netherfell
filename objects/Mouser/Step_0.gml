/// @description Insert description here
// You can write your code in this editor
if ( mouse_xprevious != mouse_x || mouse_yprevious !=mouse_y){
	visible=true;	
}

else {visible=false}

if (!enabled){visible=false;}

mouse_xprevious= mouse_x;
mouse_yprevious =mouse_y;