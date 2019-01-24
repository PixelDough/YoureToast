/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == PLAYER.DIE or instance_exists(obj_dialog)
	exit;

var _x_input = (keyboard_check(vk_right)-keyboard_check(vk_left));

if _x_input != 0 {
	truestate_switch(PLAYER.WALK)
	facing_dir = _x_input;
} else {
	truestate_switch(PLAYER.STAND)
}

velocity[0] = approach(velocity[0], 2*_x_input, 0.25);

var _grav_mul = 1;
if velocity[1] > 0 {
	_grav_mul = 1.5;
}

if !grounded()
	velocity[1] += grav*_grav_mul;

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
	jump_count = 2;
	jump_buffer = 15;
	jump_end = 0;
} else {
	jump_buffer -= 1;
}

// Jumping
var _jh = jh;

if _do_jump {
	myRide = noone;
	jump_count--;
	jump_end = 0;
	velocity[1] = -_jh
	play_sound(snd_jump)
	if !place_meeting(x, y+1, obj_solid) {
		velocity[0] = 2*_x_input;
	}
	repeat(3) instance_create_depth(x, bbox_bottom, depth-10, obj_dust)
}
if keyboard_check_released(vk_up) {
	if velocity[1] < 0 {
		velocity[1] *= 0.75
	}
}


var _grounded = place_meeting(x, y+1, obj_solid)

velocity = do_collision(velocity, collide);

if !_grounded and place_meeting(x, y+1, obj_solid)
	play_sound(snd_land2)

if !place_meeting(x, y+1, obj_solid) {
	truestate_switch(PLAYER.JUMP)
}

if bbox_top-velocity[1] > room_height+sprite_height {
	truestate_switch(PLAYER.DIE);
}

//image_xscale = scale;
//image_yscale = scale;

//xscale = lerp(xscale, 1+abs(velocity[0]/5), 0.5);
//yscale = lerp(yscale, 1+abs(velocity[1]/10), 0.5);
