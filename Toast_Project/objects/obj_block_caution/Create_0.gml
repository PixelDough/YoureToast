
event_inherited();

enum CAUTION {
	WAIT,
	SHAKE,
	FALL
}

truestate_create_state(CAUTION.WAIT, state_block_caution_wait)
truestate_create_state(CAUTION.SHAKE, state_block_caution_shake)
truestate_create_state(CAUTION.FALL, state_block_caution_fall)

truestate_set_default(CAUTION.WAIT)


velocity = [0, 0]

falling = false;

time = 0;