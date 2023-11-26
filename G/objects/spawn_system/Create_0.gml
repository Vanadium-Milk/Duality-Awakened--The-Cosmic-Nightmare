/// @description Define parameters
global.round = 0; //starting round
round_inbetween = 10; //Seconds in between rounds

if(!instance_exists(obj_tutorial)){
	scr_display_message("GET READY!", 4);
	alarm[0] = round_inbetween * 60;
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
	initial: 5,
	max_chance: 1,
	counter: 0
},
{
	enemy: obj_enemy_arpik,
	initial: 4,
	max_chance: 2,
	counter: 0
},
{
	enemy: obj_enemy_azurath,
	initial: 6,
	max_chance: 1,
	counter: 0
},
]