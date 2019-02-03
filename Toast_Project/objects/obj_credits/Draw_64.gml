
display_set_gui_size(768, 432)

draw_sprite_ext(spr_player_walk, 0, cred_x, cred_y, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_kid_stand, 0, cred_x, cred_y + string_height(cred) + sprite_get_height(spr_kid_stand), 2, 2, 0, c_white, 1)

draw_set_font(global.fnt_text);
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);

draw_text(cred_x, cred_y, cred)

var _scrollSpeed = scrollSpeedDefault;
if keyboard_check(vk_down)
	_scrollSpeed *= 4;

if cred_y > -string_height(cred)+room_height/2 {
	cred_y-= _scrollSpeed;
} else {
	if !instance_exists(obj_dialog) {
		var _dialog = instance_create_layer(0, 0, "META", obj_dialog);
		_dialog.dialog_script = dialog_demo_credits;
	}
}
