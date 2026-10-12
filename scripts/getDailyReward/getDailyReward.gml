// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getDailyReward(){
	i=instance_create_depth(room_width/2,room_height*(1/4),-9998,textBox);
	i.text = "Daily Reward Chest!";
	i=instance_create_depth(room_width/2,room_height*(2/3),-9998,ChestButton);
	
}