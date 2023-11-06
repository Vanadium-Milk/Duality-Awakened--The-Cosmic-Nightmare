/// @description Set attributes

event_inherited();
enemy = {
	sprite: "spr_enemy_raster",
	damage: .2,
	drop_list: [acido_raster,acido_raster],
	drop_chance: 1, //likelyhood of dropping loot (1 out of n)
	score_value: 25,
	enemy_health: 40
};
speed = .5;