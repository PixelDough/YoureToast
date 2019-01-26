///@arg script
///@arg [arg0]

var _size = array_height_2d(dialog)-1;

var _scripts = dialog[@ _size, 4];
var _scriptsNew = [];
for (var _i = 0; _i<array_length_1d(_scripts); _i++) {
	_scriptsNew[_i] = _scripts[_i];
}

_scriptsNew[array_length_1d(_scriptsNew)] = argument[0];

dialog[@ _size, 4] = _scriptsNew;


if argument_count >= 2 {
	var _args = dialog[@ _size, 5];
	var _argsNew = [];
	for (var _i = 0; _i < array_length_1d(_args); _i++) {
		_argsNew[_i] = _args[_i];
	}

	_argsNew[array_length_1d(_argsNew)] = argument[1];
	
	dialog[@ _size, 5] = _argsNew;
	
}

