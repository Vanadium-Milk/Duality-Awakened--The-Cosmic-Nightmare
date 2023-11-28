/// @description switch background music
if(!audio_is_playing(global.lvl_soundtrack) && global.music_play){
	track ++
	if(track >= array_length(global.music_queue) - 1){
		track = 0;
	}
	global.lvl_soundtrack = audio_play_sound(global.music_queue[track], 0, false, global.music_volume);
}