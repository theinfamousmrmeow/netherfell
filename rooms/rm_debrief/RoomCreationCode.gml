var xx=room_width/2;
var yy=room_height*(1/3);

i=instance_create_depth(xx,yy,-9998,textBoxCountup)
i.baseText = "Total Score ";
i.targetCount=score;

achievement_post_score(LEADERBOARD_MAIN, score);


//yy = yy + 16;
yy+=16;

i=instance_create_depth(xx,yy,-9998,textBoxCountup)
i.baseText = "Rooms Cleared ";
i.targetCount=global.currentRound;

//Reset Score
score=0;

//yy = yy + 16;
yy = room_height*(2/3);
instance_create_depth(room_width*(2/3),yy,-9998,ToTitleButton);
instance_create_depth(room_width*(1/3),yy,-9998,RetryButton);