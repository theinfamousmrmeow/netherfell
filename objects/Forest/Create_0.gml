/// @description Insert description here
// You can write your code in this editor
if (visible){
	row=0;
	treeWidth=sprite_get_width(spr_tree)*0.6;
	xx=0;
	yy=y
	rows=4;
	treeSize=1;
	depth=1;
	repeat(rows){
		xx=0;
		for (var i=0;i<ceil(room_width/treeWidth)+1;i++){
		ii=instance_create_depth(xx,yy,row+depth,Tree);
		xx+=treeWidth;
	
			ii.image_xscale=treeSize;
		ii.image_yscale=treeSize;

	}

		treeSize*=0.8;
		treeWidth*=treeSize;
	yy-=24*treeSize;
	}
}
instance_destroy();