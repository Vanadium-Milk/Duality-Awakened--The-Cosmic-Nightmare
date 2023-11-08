/// @description Set attributes
event_inherited();
enemy = {
	sprite: "spr_enemy_raster",
	damage: .2,
	drop_list: [acido_raster,acido_raster],
	drop_chance: 1, //likelyhood of dropping loot (1 out of n)
	score_value: 25,
	enemy_health: 40,
	//attributes for death event
	blood_color1: #61FF00,
	blood_color2: #009616,
	blood_color3: #004F2C,
	death_intensity: 1.6
};
speed = .5;

//Trail particle system
_psT = part_system_create();
part_system_draw_order(_psT, true);

_ptypeTrail = part_type_create();
part_type_shape(_ptypeTrail, pt_shape_sphere);
part_type_size(_ptypeTrail, .8, 1.2, -.005, 0);
part_type_scale(_ptypeTrail, 0.2, 0.2);
part_type_speed(_ptypeTrail, 0, 0, 0, 0);
part_type_direction(_ptypeTrail, 0, 0, 0, 0);
part_type_gravity(_ptypeTrail, 0, 270);
part_type_orientation(_ptypeTrail, 0, 0, 0, 0, false);
part_type_colour3(_ptypeTrail, $00F214, $0A6D00, $1F4F00);
part_type_alpha3(_ptypeTrail, .5, .2, 0);
part_type_blend(_ptypeTrail, false);
part_type_life(_ptypeTrail, 80, 200);

part_system_position(_psT,0, 0);
