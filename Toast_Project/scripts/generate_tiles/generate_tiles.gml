var _tilemap = layer_tilemap_get_id(layer_get_id("Tiles"));

tilemap_clear(_tilemap, 0)

var _grid = mp_grid_create(0, 0, room_width/16, room_height/16, 16, 16);
with all {
	if (!object_is_ancestor(object_index, obj_truestate_solid) and object_is_ancestor(object_index, obj_solid)) {
		mp_grid_add_instances(_grid, self, true)
	}
}

for (var _x = 0; _x<room_width; _x+=16) {
	for (var _y = 0; _y<room_height; _y+=16) {
		//var _r = collision_line(_x, _y, room_width, _y, obj_block_basic, false, true);
		//var _l = collision_line(_x, _y, 0, _y, obj_block_basic, false, true);
		//var _d = collision_line(_x, _y, _x, room_height, obj_block_basic, false, true);
		//var _u = collision_line(_x, _y, _x, 0, obj_block_basic, false, true);
		
		//if _r and _l and _u and _d {
		//	tilemap_set_at_pixel(_tilemap, 1, _x, _y);
		//} else {
		//	if !instance_position(_x, _y, obj_block_basic) {
		//		tilemap_set_at_pixel(_tilemap, 0, _x-16, _y);
		//		tilemap_set_at_pixel(_tilemap, 0, _x+16, _y);
		//		tilemap_set_at_pixel(_tilemap, 0, _x, _y-16);
		//		tilemap_set_at_pixel(_tilemap, 0, _x, _y+16);
		//	}
		//}
		var _path = path_add();
		if instance_exists(obj_player) {
			var _can = mp_grid_path(_grid, _path, obj_player.x, obj_player.y, _x, _y, false);
		
			if _can or collision_point(_x, _y, obj_solid, false, true) {
				tilemap_set_at_pixel(_tilemap, 1, _x, _y)
			}
		}
	}
}
