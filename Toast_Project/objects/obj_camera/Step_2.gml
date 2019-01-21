
if !instance_exists(obj_player)
	exit;

var _width = camera_get_view_width(view_camera[view_current]);
var _height = camera_get_view_height(view_camera[view_current]);


var _camSpeed = 0.5;


if obj_player.y < bbox_top {
	y = lerp(bbox_top, obj_player.y, _camSpeed)+sprite_height/2;
}
if obj_player.y > bbox_bottom {
	y = lerp(bbox_bottom, obj_player.y, _camSpeed)-sprite_height/2;
}
if obj_player.x < bbox_left {
	x = lerp(bbox_left, obj_player.x, _camSpeed)+sprite_width/2;
}
if obj_player.x > bbox_right {
	x = lerp(bbox_right, obj_player.x, _camSpeed)-sprite_width/2;
}

//x = obj_player.x
//y = obj_player.y

x = clamp(x, _width/2, room_width-(_width/2));
y = clamp(y, _height/2, room_height-(_height/2));

camera_set_view_pos(view_camera[view_current], (x-_width/2), (y-_height/2))
