// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function openSettingsMenu(){
	yy = room_height*(1/3);
	xx = room_width*(1/2);
	
				for (var j=0;j<4;j++){	
				switch(j){
					case 0:
					buttonType = BGMButton; break;
					case 1:
					buttonType = HandedButton; break;
					case 2:
					buttonType = ControlButton; break;
					case 3:
					buttonType = RetryButton; break;
		
				}
	
				i=instance_create_depth(xx,yy+j*32,-9999,buttonType);

			}
			
			
	i=instance_create_depth(x,y,-9999,TwitterButton);
	i=instance_create_depth(x,y,-9999,Games);
	
}