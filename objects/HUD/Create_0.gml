/// @description Insert description here
// You can write your code in this editor
paused_surf = -1
depth = GUI_DEPTH;


var fireTime = date_current_datetime();
var data = "daily_reward";
//push_local_notification(fireTime, "Ahoy!", "Catch The Haggis Has A Present", data);

i=instance_create_depth(x,y,0,TimeBonus);

if (!instance_exists(Camera)){i=instance_create_depth(x,y,0,Camera);}

	xx=32;
	yy=room_height*1/4;

scoreColor=choose(c_yellow,c_fuchsia,c_aqua,c_red);
alarm[2]=2;
monsterPoints = 50 + (global.currentRound*20)

monsterList = ds_list_create();
//ds_list_add(monsterList,Beetlerang+1);

monsterTypes = real(MONSTERS_END) - real(MONSTERS_BEGIN)

ds_list_add(monsterList,Beetlerang);
ds_list_add(monsterList,Brog);
ds_list_add(monsterList,Hornet);
ds_list_add(monsterList,Hornet);
ds_list_add(monsterList,Hornet);
if (global.currentRound>=3) ds_list_add(monsterList,SkeletonWarrior);
if (global.currentRound>=4) ds_list_add(monsterList,Eyegor);
if (global.currentRound>=5) ds_list_add(monsterList,Wyrm);
//if (global.currentRound>=8) ds_list_add(monsterList,GreenWyrm);


//show_message(monsterTypes);

for (var k=0;k<monsterTypes;k++){
	if (global.currentRound>=k){
		//ds_list_add(monsterList,Beetlerang);
	}
}

while (monsterPoints>0){
	ds_list_shuffle(monsterList);
	monster = ds_list_find_value(monsterList,0);
	var i=instance_create_depth(random(room_width),16+random(room_height/3),0,monster);
	if (monsterPoints>=i.worth || ds_list_size(monsterList)==1){
		monsterPoints-=i.worth;
	}
	else {
		ds_list_delete(monsterList,0);
		if (monster==Wyrm){

			with (Segment){
				if (head==i) instance_destroy(id,false);
				}
			with (WyrmBody){
				if (head==i) instance_destroy(id,false);
				}
			}
		instance_destroy(i,false);
	}
}

ds_list_destroy(monsterList);



//initScreen(1)

//window_set_fullscreen(true);
hp=3;
hpMax=hp;
curScore=score;
curCoins=global.coins;
coinColor=c_yellow;
alarm[1]=2;
tileFill();
bgmStop();
if (global.bgm=-1) {bgmPlay(spellSlinger);}