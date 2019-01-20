/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum PLAYER {
	STAND,
	WALK,
	JUMP,
	DIE
}

truestate_create_state(PLAYER.STAND, state_player_stand)
truestate_create_state(PLAYER.WALK, state_player_walk)
truestate_create_state(PLAYER.JUMP, state_player_jump)
truestate_create_state(PLAYER.DIE, state_player_die)

truestate_set_default(PLAYER.STAND)


velocity = [0, 0]
velocity_ride = [0, 0];
facing_dir = 1;
xscale = 1;
yscale = 1;

collide = true;

myRide = 0;

jump_count = 2;
jump_count_max = 2;
jump_buffer = 5;
jump_end = 5;
jump_try = false;

isTiny = false;
hasShield = false;

jh = 3;
grav = 0.09
