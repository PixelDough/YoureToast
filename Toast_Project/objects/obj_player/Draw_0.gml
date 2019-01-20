/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_sprite_ext(sprite_index, image_index, x, y, xscale * facing_dir, yscale, image_angle, c_white, 1);

if hasShield {
	draw_sprite_ext(spr_bubble, 0, x, y, 1, 1, 0, c_white, 0.5);
}
