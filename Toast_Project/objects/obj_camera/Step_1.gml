
var _camw = roundn(window_get_width(), camera_get_view_width(view_camera[view_current]));
var _camh = roundn(window_get_height(), camera_get_view_height(view_camera[view_current]));
if surface_get_width(application_surface) != _camw and surface_get_height(application_surface) != _camh
	surface_resize(application_surface, _camw, _camh)
