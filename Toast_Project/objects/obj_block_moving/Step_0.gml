
do_collision(velocity, false);

while place_meeting(x+velocity[0], y, obj_player) {
	obj_player.x+=velocity[0];
}
if place_meeting(x+velocity[0], y, obj_solid) or instance_position(((bbox_left+bbox_right)/2), ((bbox_top+bbox_bottom)/2), obj_block_moving_stopper) {
	velocity[0] *= -1
}
