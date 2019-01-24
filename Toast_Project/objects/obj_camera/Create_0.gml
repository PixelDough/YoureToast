
velocity = [0,0]

camera_set_view_size(view_camera[view_current], camera_get_view_width(view_camera[view_current]), camera_get_view_height(view_camera[view_current]))

width = camera_get_view_width(view_camera[view_current]);
height = camera_get_view_height(view_camera[view_current]);

gameScale = 2;
window_set_size(width*gameScale, height*gameScale)
alarm[0] = 1;
