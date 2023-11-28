/// @description Set attributes

enemy = {
	sprite: "spr_enemy_arpik",
	damage: .6,
	mov_speed: .8,
	drop_list: [obj_mineral_xenthrite,obj_mineral_chronium],
	drop_chance: 2, //likelyhood of dropping loot (1 out of n)
	score_value: 20,
	enemy_health: 18,
	
	//Attributes for death event
	blood_color1: #565462,
	blood_color2: #232326,
	blood_color3: c_black,
	death_intensity: 1,
	
	//pathfinding grid
	obstacle_grid: global.grid_no_liquid,
};

shadow_size = 10;

//Update its own index on the array
global.enemies[5].discovered = true;

event_inherited();