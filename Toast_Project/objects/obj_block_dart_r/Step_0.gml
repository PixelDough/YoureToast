/// @description 

var _range = point_distance(x+8, y+8, obj_player.x, obj_player.y)//16*10;
if AMMO > 0 and alarm[0] <= 0 and collision_line(x+8, y+8, x+((_range+8)*(lengthdir_x(1, dir*90))), y+8, obj_player, false, true) and !collision_line(x+8, y+8, x+((_range+8)*(lengthdir_x(1, dir*90))), y+8, obj_solid, false, true) {
	alarm[0] = 5;
}
