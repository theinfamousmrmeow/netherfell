/// @desc Draw the current status
event_inherited();

if (global.ads) { draw_text(drawPosX, y, "Available"); }
else { draw_text(drawPosX, y, "Purchased"); }