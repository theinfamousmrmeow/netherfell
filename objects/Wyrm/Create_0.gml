/// @description Insert description here
// You can write your code in this edito

event_inherited();

var ii;
var iii=id;

dir = random(360);
hp=12;
attachmentOffset=0;
segmentCount=5;
alarm[0]=100;
//x=room_width/2;
y=0+segmentCount*4;
//alarm[2]=0
tail=-1;
for (var i=0;i<segmentCount;i++){
	ii =instance_create_depth(x,y-4*i,0,Segment);
	ii.previousSegment = iii;
	ii.head=id;
	iii=ii;
}

speed=0;

tail=ii;
tail = instance_create_depth(x,y-segmentCount*4-12,0,WyrmBody);
ii.nextSegment=tail;
ii.maxDist=0;
tail.head=id;
action=actions.idle;
maxDist=segmentCount*8;
alarm[1]=100;

interruptible=false;
worth = 100;
body=-1;

palette = spr_wyrm_palette;
paletteIndex=0;