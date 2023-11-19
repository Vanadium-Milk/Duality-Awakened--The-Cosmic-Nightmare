/// @description Inserte aquí la descripción

enemy = {
	sprite: "spr_enemy_krathor_" + type,
	damage: 1.6,
	mov_speed: 1,
	drop_list: [obj_mineral1,obj_mineral2],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 50,
	enemy_health: 40,
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
};

event_inherited();