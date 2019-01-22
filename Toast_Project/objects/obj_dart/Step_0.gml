/// @description 

//if hasHit {
//	stick_to(hasHit, 0, hitY)
//	exit;
//}

direction = angle_approach(direction, 270, 0.5);
image_angle = direction;

var _hit = instance_place(x, y, obj_solid);
if _hit {
	if _hit != ignore_instance {
		instance_destroy()
		make_smoke(5);
	}
}

life++;
