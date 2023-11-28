/// @description Define parameters
global.round = 0; //starting round
round_inbetween = 20; //Seconds in between rounds

if(!instance_exists(obj_tutorial)){
	scr_display_message("GET READY!", 4);
	global.lvl_soundtrack = audio_play_sound(snd_room1, 0, true, 1);
	alarm[0] = round_inbetween * 30;
}

spawn_list = ds_list_create();

spawn_chances = [
{
	enemy: obj_enemy_spiky,
	initial: 0,
	max_chance: 4,
	counter: 0
},
{
	enemy: obj_enemy_flyail,
	initial: 2,
	max_chance: 3,
	counter: 0
},
{
	enemy: obj_enemy_raster,
	initial: 3,
	max_chance: 2,
	counter: 0
},
{
	enemy: obj_enemy_krathor_head,
	initial: 8,
	max_chance: 1,
	counter: 0
},
{
	enemy: obj_enemy_arpik,
	initial: 5,
	max_chance: 2,
	counter: 0
},
{
	enemy: obj_enemy_azurath,
	initial: 7,
	max_chance: 1,
	counter: 0
},
]