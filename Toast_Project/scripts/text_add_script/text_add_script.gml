///@arg script
///@arg [arg0]

var _size = array_height_2d(dialog)-1;

dialog[@ _size, 4] = argument0;

if argument_count >= 1 
	dialog[@ _size, 5] = argument[1];

