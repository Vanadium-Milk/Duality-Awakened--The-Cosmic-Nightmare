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
_ps = part_system_create();
part_system_draw_order(_ps, true);
part_system_global_space(_ps,true);

var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_sphere);
part_type_size(_ptype1, 1, 1, -0.008, 0);
part_type_scale(_ptype1, 0.2, 0.2);
part_type_speed(_ptype1, 0, 0, 0, 0);
part_type_direction(_ptype1, 0, 0, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $00F214, $0A6D00, $1F4F00);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 80, 200);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -5, 5, -5, 5, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, 1);


