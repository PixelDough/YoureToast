/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum DOOR {
	CLOSED,
	OPENING,
	OPEN,
	CLOSING
}

truestate_create_state(DOOR.CLOSED, state_door_closed);
truestate_create_state(DOOR.OPENING, state_door_opening);
truestate_create_state(DOOR.OPEN, state_door_open);
truestate_create_state(DOOR.CLOSING, state_door_closing);

truestate_set_default(DOOR.CLOSED)

OPEN = false;
