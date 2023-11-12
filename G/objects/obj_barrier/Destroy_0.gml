/// @description Particles on destruction
var _ps = part_system_create();
part_system_draw_order(_ps, true);

var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_square);
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 0.08, 0.08);
part_type_speed(_ptype1, 6, 8, -0.2, 0);
part_type_direction(_ptype1, 0, 180, 0, 0);
part_type_gravity(_ptype1, 0.2, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $DBF9FF, $1DE1F7, $09099E);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 10, 25);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -8, 8, -38.5, 38.5, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 45);

part_system_position(_ps, x, y);
