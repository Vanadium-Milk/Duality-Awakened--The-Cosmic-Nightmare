/// @description Play footsteps sound
if(place_meeting(x, y, obj_acidlake)){
	audio_play_sound(choose(snd_footstep_wet_1, snd_footstep_wet_2), 1, 0,random_range(.8,1.2),0,random_range(.8,1.2));
}
else{
	audio_play_sound(choose(snd_footstep_1, snd_footstep_2, snd_footstep_3, snd_footstep_4), 1, 0,random_range(.8,1.2),0,random_range(.8,1.2));
}
audio_play_sound(choose(snd_rubbing_1, snd_rubbing_2), 1, 0,random_range(.8,1.2),0,random_range(.8,1.2));