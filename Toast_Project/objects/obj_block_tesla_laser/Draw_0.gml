
if instance_exists(obj_switch) {
	if obj_switch.OPEN
		exit;
}

if place_meeting(x, y, obj_player) and !place_meeting(x, y, obj_grate) {
	with obj_player {
		truestate_switch(PLAYER.DIE)
	}
}

draw_self();
