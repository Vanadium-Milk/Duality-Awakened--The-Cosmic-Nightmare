/// @description Set attributes

enemy = {
	sprite: "spr_enemy_spiky",
	damage: .8,
	mov_speed: .8,
	drop_list: [obj_mineral_coriumite,obj_mineral_xenthrite],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 10,
	enemy_health: 25,
	
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	
	//pathfinding grid
	obstacle_grid: global.grid,
};

shadow_size = 12;

//Update its own index on the array
obj_guide.discovered_enemies[0].discovered = true;

event_inherited();