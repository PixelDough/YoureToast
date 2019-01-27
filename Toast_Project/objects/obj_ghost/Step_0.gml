
if instance_exists(obj_player) {
	if obj_player.state != PLAYER.DIE and floor(obj_player.x) != obj_player.xstart {
		data[time] = [obj_player.sprite_index, obj_player.image_index, obj_player.x, obj_player.y, obj_player.facing_dir];
		time++;
	}
}

if frame < time {
	var _data = data[frame];
	if time < 60 {
		sprite_index = _data[0];
		image_index = _data[1];
		image_alpha = time/60;
		x = xstart + (time*((_data[2]-xstart)/60));
		y = ystart + (time*((_data[3]-ystart)/60));
	} else {
		sprite_index = _data[0];
		image_index = _data[1];
		x = _data[2];
		y = _data[3];
		image_xscale = _data[4];
	
		if place_meeting(x, y, obj_player) {
			with obj_player {
				truestate_switch(PLAYER.DIE)
			}
		}
	
		frame++;
	}
	
}
