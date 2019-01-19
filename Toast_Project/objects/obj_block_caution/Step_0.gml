
event_inherited();

velocity = do_collision(velocity, true)

while place_meeting(x, y+velocity[1], obj_player) {
	obj_player.y+=velocity[1];
}
