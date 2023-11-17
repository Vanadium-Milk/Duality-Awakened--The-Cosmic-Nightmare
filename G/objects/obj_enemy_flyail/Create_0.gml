/// @description Set attributes
enemy = {
	sprite: "spr_enemy_flyail",
	damage: .1,
	mov_speed: 1.2,
	drop_list: [obj_mineral3,obj_mineral4],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 15,
	enemy_health: 15,
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	
};

event_inherited();