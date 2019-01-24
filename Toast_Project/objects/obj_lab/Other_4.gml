
if !audio_is_playing(song) {
	audio_stop_all();
	audio_play_sound(song, 100, true);
}

with all {
	if object_index == obj_block_basic {
		sprite_index = other.blockSprite;
	}
}
