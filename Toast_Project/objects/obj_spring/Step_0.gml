
var _rider = instance_place(x, y-1, obj_player);
if _rider {
	for (var _i=0; _i<5; _i++) {
		instance_create_depth(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), depth-10, obj_dust)
	}
	_rider.velocity[1] = -7;
	image_index = 0;
	sprite_index = spr_spring_bounce;
}
