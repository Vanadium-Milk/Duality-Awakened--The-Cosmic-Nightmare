/// @description Set attributes

event_inherited();
enemy = {
	sprite: "spr_enemy_spiky",
	damage: .8,
	drop_list: [obj_mineral1,obj_mineral2],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 10,
	enemy_health: 20
};
speed = .5;