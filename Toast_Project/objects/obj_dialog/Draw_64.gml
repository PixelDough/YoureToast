
display_set_gui_size(768, 432)

draw_set_color(c_black)
//draw_set_alpha(0.5)
draw_rectangle(5, 5, room_width-5, 111, false)
draw_set_alpha(1)

draw_sprite_ext(dialog[@ line, 0], dialog[@ line, 1], 10, 10, 2, 2, 0, c_white, 1)

//var _nameString = "Blackbrow"
//var _nameWidth = string_width(_nameString) + 10;

//draw_rectangle(5, 116, 5+_nameWidth+5, 116+34, false);
draw_set_color(c_white)
//draw_text(5+_nameWidth/2, 116+5, _nameString);

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_font(global.fnt_text);
draw_text_ext(112, 63, string_copy(dialog[@ line, 2], 0, char), font_get_size(global.fnt_text)+8, room_width-10-112);

if char < string_length(dialog[@ line, 2]) {
	var _currentChar = string_char_at(dialog[@ line, 2], char);
	if string_pos(_currentChar, ".,!?") {
		charSpeed = 0.05;
	} else {
		charSpeed = 0.5;
		if floor(char+charSpeed) > floor(char) and _currentChar!=" " {
			play_sound(dialog[@ line, 3])
		}
	}

	char+=charSpeed;
}

draw_set_valign(fa_top)
