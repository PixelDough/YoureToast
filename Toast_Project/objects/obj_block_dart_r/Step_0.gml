/// @description 

var _range = point_distance(x+8, y+8, obj_player.x, obj_player.y)//16*10;
if AMMO > 0 and alarm[0] <= 0 and collision_line(x+8, y+8, (x+8)+((_range)*(dir == 0 ? 1 : -1)), y+8, obj_player, false, true) and !collision_line(x+8, y+8, (x+8)+((_range)*(dir == 0 ? 1 : -1)), y+8, obj_solid, false, true) {
	alarm[0] = 5;
}
