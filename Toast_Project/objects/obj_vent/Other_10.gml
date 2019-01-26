/// @description 

// Inherit the parent event
event_inherited();

if !ENABLED
	exit;


var _dialog = instance_create_layer(0, 0, "META", obj_dialog);

if dialog_script == noone
	dialog_script = dialog_none;

_dialog.dialog_script = dialog_script;
