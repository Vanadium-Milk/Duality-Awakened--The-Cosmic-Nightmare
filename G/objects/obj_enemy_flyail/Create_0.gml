/// @description Set attributes
enemy = {
	sprite: "spr_enemy_flyail",
	damage: .35,
	mov_speed: 1.2,
	drop_list: [obj_mineral_aetherium,obj_mineral_chronium],
	drop_chance: 2, //likelyhood of dropping loot (1 out of n)
	score_value: 15,
	enemy_health: 15,
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	death_sound: snd_flyail,
	
};

shadow_size = 10;

//Update its own index on the array
global.enemies[1].discovered = true;

event_inherited();