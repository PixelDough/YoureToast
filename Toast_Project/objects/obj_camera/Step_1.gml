


var _camw = roundn(window_get_width(), width);
var _camh = roundn(window_get_height(), height);
if surface_get_width(application_surface) != _camw and surface_get_height(application_surface) != _camh
	surface_resize(application_surface, _camw, _camh)
