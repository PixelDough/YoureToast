
if instance_exists(obj_camera) and time > 0 {
	obj_camera.x_shake = random_range(1, magnitude) * choose(-1, 1);
	obj_camera.y_shake = random_range(1, magnitude) * choose(-1, 1);
	time--;
} else {
	instance_destroy();
}
