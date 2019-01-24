
if keyboard_check_pressed(vk_down) {
	// Check if the line has finished typing.
	if char >= string_length(dialog[@ line, 2]) {
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
