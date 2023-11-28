/// @description Set attributes

enemy = {
	sprite: "spr_enemy_spiky",
	damage: .3,
	mov_speed: .8,
	drop_list: [obj_mineral_coriumite,obj_mineral_xenthrite],
	drop_chance: 2, //likelyhood of dropping loot (1 out of n)
	score_value: 10,
	enemy_health: 25,
	
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	death_sound: snd_spiky,
	
	//pathfinding grid
	obstacle_grid: global.grid,
};

shadow_size = 12;

//Update its own index on the array
global.enemies[0].discovered = true;

event_inherited();