/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
text="Purchase";
textOffset=0;
disabled=true;

if (global.iapStatus==false){disabled=true; }


else{

	
	image_blend=c_white;

	//y=room_height-16;
	y=(room_height-16/2)-PADDING*2;
	//x=room_width-sprite_width*2;
	x=(12)+PADDING*2;
	sprBg=sprite_index;
}

switch (os_type){
	case os_android:
	case os_ios:
		//do nothing;
		break;
	default:
		//instance_destroy();
		break;
}
alarm[10]=100;

if (global.iapStatus==false){disabled=true;}

if (global.hasPremiumKey || global.ads==false){instance_destroy();}