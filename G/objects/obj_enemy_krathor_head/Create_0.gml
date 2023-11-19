/// @description Inserte aquí la descripción

enemy = {
	sprite: "spr_enemy_krathor_head",
	damage: 1.6,
	mov_speed: 1,
	drop_list: [obj_mineral5, obj_mineral6],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 50,
	enemy_health: 40,
	//Attributes for death event
	blood_color1: #FF0000,
	blood_color2: #960000,
	blood_color3: #5B0000,
	death_intensity: 1,
	
	//pathfinding grid
	obstacle_grid: global.grid_no_liquid,
};

event_inherited();

body_offset = 39 //This regulates how far beneath the other body parts appear (must be a multiple of 3)
positions = ds_list_create()
type = "head";
last = self
main = self

_ps = part_system_create();
part_system_draw_order(_ps, true);

var _ptype1 = part_type_create();
part_type_sprite(_ptype1, spr_rock_particles, false, false, false)
part_type_size(_ptype1, 0.5, 1, 0, 0);
part_type_scale(_ptype1, 0.5, 0.5);
part_type_speed(_ptype1, 1, 2, 0, 0);
part_type_direction(_ptype1, 26, 155, 0, 0);
part_type_gravity(_ptype1, 0.06, 270);
part_type_orientation(_ptype1, 0, 360, 1, 0, false);
part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 10, 40);

_pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -16, 16, -16, 16, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, 2);

part_system_position(_ps, x, y);
part_system_depth(_ps, -y - 10);