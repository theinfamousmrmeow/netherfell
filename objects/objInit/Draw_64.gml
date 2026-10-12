var locX = room_width-300;

draw_text(locX,20, "Google Play Services Status: " + string(GooglePlayServices_Status()));
draw_text(locX,40, "Username: " + global.OurName);
draw_text(locX,60, "User ID: " + global.OurId);
draw_text(locX,80, "Achievement Status: " + string(achievement_login_status()));
