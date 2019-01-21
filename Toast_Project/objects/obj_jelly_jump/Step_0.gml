
scale = lerp(scale, 1, 0.1);

if place_meeting(x, y, obj_player) {
	if ACTIVE {
		ACTIVE = false;
		alarm[0] = 240;
		event_user(0);
		scale = 0.5;
	}
}
