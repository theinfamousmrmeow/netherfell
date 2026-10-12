function tileFill() {
	var lay_id= layer_get_id("floorTiles");
	var ts = choose(ts_floor_red,ts_floor_yellow,ts_floor_green,ts_floor_blue);
	//layer_tile_change(lay_id,spr)
	var map_id = layer_tilemap_get_id(lay_id);
	var tileSize=16;

    tilemap_tileset(map_id, ts);


	for (var w =0;w<room_width/tileSize;w++){
		for (var h =0;h<room_height/tileSize;h++){
			var data = tilemap_get(map_id, w, h);
			var ind = tile_get_index(data);
			data = tile_set_index(data, irandom(tilemap_get_width(map_id)-1)+1);
			tilemap_set(map_id, data, w, h);
		}
	}


}
