///@description Create a list with all soundtracks and play the first one
function scr_play_music_queue(){
	var soundtracks = [snd_bckg1, snd_bckg2, snd_bckg3, snd_bckg4];
	global.music_queue = array_shuffle(soundtracks);
	
	global.lvl_soundtrack = audio_play_sound(global.music_queue[0], 0, false, global.music_volume);
	global.music_play = true
}