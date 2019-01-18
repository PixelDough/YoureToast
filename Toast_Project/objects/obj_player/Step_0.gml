/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _x_input = (keyboard_check(vk_right)-keyboard_check(vk_left));

if _x_input != 0 {
	truestate_switch(PLAYER.WALK)
	image_xscale = _x_input;
} else {
	truestate_switch(PLAYER.STAND)
}

velocity[0] = (_x_input) * 2;

velocity[1] += 0.18;

var _do_jump = false;
if keyboard_check_pressed(vk_up) {
	jump_try = true;
	jump_end = 10;
}

if jump_try {
	jump_end --;
	if jump_end <= 0 {
		jump_try = false;
	}
}

if (jump_try) and ((jump_count > 0) or (jump_buffer > 0)) {
	_do_jump = true;
}
if jump_end > 10 {
	_do_jump = true;
}

if place_meeting(x, y+1, obj_solid) {
	jump_count = 1;
	jump_buffer = 15;
	jump_end = 0;
} else {
	jump_buffer -= 1;
}

// Jumping
if _do_jump {
	myRide = noone;
	if !place_meeting(x, y+1, obj_solid)
		jump_count--;
	jump_end = 0;
	velocity[1] = -3
}

velocity = do_collision(velocity);
//x+=velocity[0];
//y+=velocity[1];
