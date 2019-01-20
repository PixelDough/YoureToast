
var _rider = instance_place(x, y-1, obj_player);
if _rider {
	for (var _i=0; _i<5; _i++) {
		instance_create_depth(random_range(bbox_left, bbox_right), bbox_top, depth-10, obj_dust)
	}
	if keyboard_check(vk_up)
		_rider.velocity[1] = -5;
	else
		_rider.velocity[1] = -2;
	image_index = 0;
	sprite_index = spr_spring_bounce;
}
