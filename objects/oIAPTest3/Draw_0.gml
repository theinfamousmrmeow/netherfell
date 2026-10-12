/// @desc Draw the current status
event_inherited();

if (!global.refundNotHappened) { draw_text(drawPosX, y, "Available"); }
else { draw_text(drawPosX, y, "Purchased"); }
