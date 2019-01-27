///@arg id

if audio_is_playing(argument0) audio_stop_sound(argument0);
return audio_play_sound(argument0, 100, false)