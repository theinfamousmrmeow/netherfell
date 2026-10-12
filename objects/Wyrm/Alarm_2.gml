
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