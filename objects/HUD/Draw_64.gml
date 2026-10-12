


//yy = HEIGHT-16-4;
yy+=8;


draw_set_halign(fa_left);

var HEIGHT = 160+32+24+16+16+16;
xx=8;
yy=8;
//draw_text(xx,yy,"WAVE: "+string(global.currentRound));
//yy+=16;
barMaxWidth = 5;
pipSize = 10;
for (var i=0;i<hpMax;i++){
	var img=0;
	
	yyy =  (i div barMaxWidth ) 
	xxx = (i mod barMaxWidth )
	
	yy = 8 + (i div barMaxWidth ) * pipSize;
	xx = 8 + (i mod barMaxWidth) * pipSize;
	if (i>0){img=1;}
	if (i=hpMax-1){img=2;}
	img=1;
	if (i>=hp){spr=spr_pip_empty;}else{spr=spr_pip_filled;}
	draw_sprite(spr,img,xx,yy);
	//xx+=8;
	//if (i>=5){yy+=8; xx=8;}
}


///DRAW SCORE
yy=PADDING*2;
//xx=140*(2/3);
xx=room_width*(1/2)-1;
draw_set_halign(fa_center);
if (curScore<score){draw_set_color(scoreColor)} else {draw_set_color(c_white);}
draw_text(xx,yy,string(curScore));


yy=HEIGHT-16;
xx=2;




display_get_gui_width()

//yy = display_get_gui_height() - 128;

if (global.livesLeft>0){
	repeat(global.livesLeft){
		draw_sprite(spr_minimap_wizard,0,xx,yy);
		xx+=18;
	}
}

//MANA GAUGE
/*
xx = 140-global.manaMax*8;
yy = HEIGHT-16;
draw_set_color(c_white);
draw_set_halign(fa_right);
for (var i=0;i<global.manaMax;i++){
	var img=0;
	if (i>0){img=1;}
	if (i=global.manaMax-1){img=2;}
	if (i>=floor(global.mana)){spr=spr_meter_empty;}else{spr=spr_hp1;}
	draw_sprite(spr,img,xx,yy);
	xx+=8;
}*/
//draw_text(xx,yy,"MANA:"+string(floor(global.mana))+"/"+string(global.manaMax));
draw_set_halign(fa_left);

//yy=room_height-8;
yy=(room_height-6)-PADDING*2;
//xx=room_width/2-8
xx=room_width/2-16
draw_set_color(coinColor);
draw_sprite(spr_gold,image_index,xx,yy);
draw_text(xx+8,yy-3,string(curCoins));

