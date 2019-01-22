/// @description 

if AMMO > 0 and collision_line(x+8, y+8, x+((16*8)*(lengthdir_x(1, dir*90))), y+8, obj_player, false, true) {
	AMMO--;
	var _dart = instance_create_depth(x+8, y+8, depth+10, obj_dart);
	_dart.direction = dir*90;
	make_smoke(10);
}
