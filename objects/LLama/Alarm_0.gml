/// @description Insert description here
// You can write your code in this editor

if (action==actions.opening && image_speed==0){
	action=actions.closing;
}

else if (action==actions.idle){
	action=choose(
	actions.idle,
	actions.animating,
	actions.animating,
	actions.opening);

}

	switch(action){
		case actions.animating:
			image_speed=1;
			sprite_index=spr_llama_chew;
		break;
		case actions.opening:
			image_index=0;
			image_speed=0.5;
			sprite_index=spr_llama_headTurn_left;
		break;
		case actions.closing:
			image_index=0;
			image_speed=0.5;
			sprite_index=spr_llama_headTurn_forward;
		break;
	}


alarm[0]=ceil(random(64))+24;