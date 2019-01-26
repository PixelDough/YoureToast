
if array_equals(dialog, []) {
	script_execute(dialog_script);
}

if keyboard_check_pressed(vk_down) {
	// Check if the line has finished typing.
	if char >= string_length(dialog[@ line, 2]) {
		var _scripts = dialog[@ line, 4];
		var _args = dialog[@ line, 5];
		
		for (var _s = 0; _s < array_length_1d(_scripts); _s++) {
			if is_array(_args) {
				if _args[_s] != noone {
					script_execute(_scripts[_s], _args[_s]);
				}
			} else {
				script_execute(_scripts[_s])
			}
		}
		// Check if the current line is the last line.
		if line >= array_height_2d(dialog)-1 {
			instance_destroy();
		} else {
			line = min(line+1, array_height_2d(dialog)-1);
			char = 0;
			finalText = "";
		}
	} else {
		// Skip char to the end of the line.
		char = string_length(dialog[@ line, 2])
	}
}
