/// @description Insert description here
// You can write your code in this editor


var xx = event_data[?"posX"];
var yy = event_data[?"posY"];

if (collision_circle(xx,yy,32,MenuButton,0,0)<=0){
	


with (MenuButton){instance_destroy()};

//show_message("CHECKING TIMESTAMP");
lastLogin = parseTimestamp(splitString(getLastLogin(),"/"));
show_debug_message("Last Login:  "+getLastLogin());
show_debug_message("last login date:"+date_date_string(lastLogin));
show_debug_message("last login time:"+date_time_string(lastLogin));
if (date_is_today(lastLogin)){
	show_debug_message("ALREADY LOGGED IN TODAY");	

	//getDailyReward();
}
else {
	show_debug_message("first login today");

	getDailyReward();
}

updateLastLogin();




instance_destroy();
instance_create_depth(x,y,0,advancer);

}

