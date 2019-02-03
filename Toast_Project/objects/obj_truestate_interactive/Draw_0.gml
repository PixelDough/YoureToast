/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if place_meeting(x, y, obj_player) {
	draw_sprite_outlined(sprite_index, image_index, x, y, 1, 1, 0, c_white, c_white);
	if keyboard_check_pressed(vk_down) {
		event_user(0);
	}
} else {
	draw_self();
}
