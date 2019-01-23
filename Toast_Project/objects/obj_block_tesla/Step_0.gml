
if instance_exists(obj_switch) {
	if obj_switch.OPEN {
		sprite_index = spr_block_tesla_off;
		exit;
	}
}
sprite_index = spr_block_tesla;

var _hitR = collision_line(x+8, y+8, x+room_width, y, obj_block_tesla, false, true)
if _hitR {
	for (var _x=0; _x<distance_to_object(_hitR); _x+=16) {
		if place_meeting(_x+x, y, obj_solid)
			exit;
		if !place_meeting(_x+x, y, obj_block_tesla_laser)
			instance_create_depth(_x+x, y, depth+10, obj_block_tesla_laser);
	}
}

var _hitL = collision_line(x+8, y+8, x-room_width, y, obj_block_tesla, false, true)
if _hitL {
	for (var _x=0; _x<distance_to_object(_hitL); _x+=16) {
		if place_meeting(_x+x, y, obj_solid)
			exit;
		if !place_meeting(x-_x, y, obj_block_tesla_laser)
			instance_create_depth(x-_x, y, depth+10, obj_block_tesla_laser);
	}
}


var _hitD = collision_line(x+8, y+8, x, y+room_height, obj_block_tesla, false, true)
if _hitD {
	for (var _y=0; _y<distance_to_object(_hitD); _y+=16) {
		if place_meeting(x, y+_y, obj_solid)
			exit;
		if !place_meeting(x, y+_y, obj_block_tesla_laser_v) {
			var _laser = instance_create_depth(x, y+_y, depth+10, obj_block_tesla_laser_v);
			
		}
	}
}

var _hitU = collision_line(x+8, y+8, x, y-room_height, obj_block_tesla, false, true)
if _hitU {
	for (var _y=0; _y<distance_to_object(_hitU); _y+=16) {
		if place_meeting(x, y-_y, obj_solid)
			exit;
		if !place_meeting(x, y-_y, obj_block_tesla_laser_v) {
			instance_create_depth(x, y-_y, depth+10, obj_block_tesla_laser_v);
		}
	}
}
