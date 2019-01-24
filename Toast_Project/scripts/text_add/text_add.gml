///@arg sprite
///@arg subimg
///@arg string
///@arg sound

var _size = array_height_2d(dialog);
dialog[@ _size, 0] = argument0;
dialog[@ _size, 1] = argument1;
dialog[@ _size, 2] = argument2;
dialog[@ _size, 3] = argument3;

if string_length(argument2) > 142 {
	dialog[@ _size, 2] = string_copy(argument2, 0, 142)
	text_add(argument0, argument1, string_copy(argument2, 143, string_length(argument2)), argument3);
}