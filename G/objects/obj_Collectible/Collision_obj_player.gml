/// @description Player collects the item

obj_inventory.resources[rsc_index] ++
audio_play_sound(choose(snd_res_collect1, snd_res_collect2, snd_res_collect3), 4, false, random_range(.8, 1.2), 0, random_range(0.8, 1.2));
instance_destroy();