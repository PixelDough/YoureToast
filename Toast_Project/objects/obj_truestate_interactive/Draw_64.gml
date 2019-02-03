
if place_meeting(x, y, obj_player) {
	draw_set_font(global.fnt_text);
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	var _camxScale = (display_get_gui_width()/camera_get_view_width(view_camera[0]));
	var _camyScale = (display_get_gui_height()/camera_get_view_height(view_camera[0]));
	var _camx = camera_get_view_x(view_camera[0]) * _camxScale;
	var _camy = camera_get_view_y(view_camera[0]) * _camyScale;
	draw_text_outlined((((bbox_right+bbox_left)/2)*_camxScale)-_camx, (bbox_top*_camyScale)-_camy, "DOWN", c_white, c_black)
	
}
