/// @description Set attributes
event_inherited();
enemy = {
	sprite: "spr_enemy_raster",
	damage: .2,
	drop_list: [acido_raster,acido_raster],
	drop_chance: 1, //likelyhood of dropping loot (1 out of n)
	score_value: 25,
<<<<<<< Updated upstream
	enemy_health: 40
=======
	enemy_health: 40,
	//attributes for death event
	blood_color1: #61FF00,
	blood_color2: #009616,
	blood_color3: #004F2C,
	death_intensity: 1.6
>>>>>>> Stashed changes
};
speed = .5;