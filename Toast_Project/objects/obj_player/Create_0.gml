/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum PLAYER {
	STAND,
	WALK,
	JUMP
}

truestate_create_state(PLAYER.STAND, state_player_stand)
truestate_create_state(PLAYER.WALK, state_player_walk)

truestate_set_default(PLAYER.STAND)


velocity = [0, 0]
velocity_ride = [0, 0];

myRide = 0;

jump_count = 2;
jump_buffer = 5;
jump_end = 5;
jump_try = false;
