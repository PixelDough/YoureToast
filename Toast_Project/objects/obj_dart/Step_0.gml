/// @description 

//if hasHit {
//	stick_to(hasHit, 0, hitY)
//	exit;
//}


//if distance_to_object(obj_player) > 32 or distance_to_object(obj_player) < 16
//	direction = angle_approach(direction, 270, 1);
//else
//	direction = angle_approach(direction, point_direction(x, y, obj_player.x, obj_player.y), 3);

////vspeed+=0.018

image_angle = direction;

var _hit = instance_place(x+hspeed, y, obj_solid);
if _hit {
	if _hit != ignore_instance {
		hasHit = _hit;
		instance_destroy()
		speed = 0;
		mask_index = spr_mask_empty;
		make_smoke(5);
	}
}

//if hasHit {
//	if direction > 90 {
//		x = hasHit.bbox_right+sprite_get_xoffset(sprite_index);
//	} else {
//		x = hasHit.bbox_left-sprite_get_xoffset(sprite_index);
//	}
//}

life++;
