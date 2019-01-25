/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum SWITCH {
	CLOSED,
	OPENING,
	OPEN,
	CLOSING
}

truestate_create_state(SWITCH.CLOSED, state_door_closed);
truestate_create_state(SWITCH.OPENING, state_door_opening);
truestate_create_state(SWITCH.OPEN, state_door_open);
truestate_create_state(SWITCH.CLOSING, state_door_closing);

truestate_set_default(SWITCH.CLOSED)


