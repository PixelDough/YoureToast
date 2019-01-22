
var _rider = instance_place(x, y-1, obj_player);
if _rider {
	if keyboard_check(vk_up)
		_rider.velocity[1] = -5;
	else
		_rider.velocity[1] = -2;
	image_index = 0;
	sprite_index = spr_spring_bounce;
}
