///@arg script
///@arg [arg0]

var _size = array_height_2d(dialog)-1;

dialog[@ _size, 4] = argument[0];

if argument_count >= 2
	dialog[@ _size, 5] = argument[1];

