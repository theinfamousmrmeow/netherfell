/// @desc Draw the current status
event_inherited();

if (!global.boostEnabled) { draw_text(drawPosX, y, "Available"); }
else { draw_text(drawPosX, y, "Active"); }
