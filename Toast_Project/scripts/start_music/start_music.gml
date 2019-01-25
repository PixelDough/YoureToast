
if !audio_is_playing(mus_lab) and instance_exists(obj_level) {
	audio_stop_all()
	audio_play_sound(obj_level.song, 100, true)
}
