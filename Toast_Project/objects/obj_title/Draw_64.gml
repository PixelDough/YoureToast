


//Text
draw_set_font(global.fnt_text)
draw_set_color(c_white);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(room_width/2, room_height/4, "You're Toast!", 2, 2, 0)

var _menu_title_sel = menu_title[SEL];

//draw_set_halign(fa_left)
for (var _m=0; _m<array_length_1d(menu_title); _m++) {
	var _menu_title_m = menu_title[_m];
	var _text_x = room_width/2
	var _text_y = room_height/2 + (_m*string_height(_menu_title_m[0])*2);
	
	if SEL == _m {
		_menu_title_m[1] = lerp(_menu_title_m[1], 1.5, 0.3);
		draw_set_color($68f8ff);
		if keyboard_check_pressed(vk_enter) {
			script_execute(_menu_title_m[2]);
		}
	} else {
		_menu_title_m[1] = lerp(_menu_title_m[1], 1, 0.3);
		draw_set_color(c_white);
	}
	
	draw_text_transformed(_text_x, _text_y, _menu_title_m[0], _menu_title_m[1], _menu_title_m[1], 0);
	
	menu_title[_m] = _menu_title_m
}

SEL = clamp(SEL + sign(keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)), 0, array_length_1d(menu_title)-1);

//draw_text(room_width/2, room_height/5, "You're Toast!");
