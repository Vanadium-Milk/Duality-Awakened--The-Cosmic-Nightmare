/// @description Inserte aquí la descripción

enemy = {
	sprite: "spr_enemy_krathor_" + type,
	damage: .4,
	mov_speed: 1,
	drop_list: [obj_mineral_coriumite, obj_mineral_pyrestone],
	drop_chance: 2, //likelyhood of dropping loot (1 out of n)
	score_value: 50,
	enemy_health: 15,
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	death_sound: snd_krathor,
};

shadow_size = 0;

weakened = false;

event_inherited();