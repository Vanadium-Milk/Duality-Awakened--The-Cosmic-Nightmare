/// @description Set particles

_ps_bullet_trail = part_system_create(); 
part_system_draw_order(_ps_bullet_trail, true);
part_system_global_space(_ps_bullet_trail, true);

//Creates a particle system based on the "Bullet_trail" particle system (see on folder)
var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_square);
part_type_size(_ptype1, 0.1, 0.05, 0, 0);
part_type_scale(_ptype1, 0.5, 0.5);
part_type_speed(_ptype1, 0, 0, 0, 0);
//Tried to set angle on direction but it's not possible since the trail is created at the same time the bullet is
part_type_direction(_ptype1, 0, 0, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $0B99E5, $FF00E9, $FF00D8);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 5, 10);

var _pemit1 = part_emitter_create(_ps_bullet_trail);
part_emitter_region(_ps_bullet_trail, _pemit1, -4.5, 4.5, -2.5, 2.5, ps_shape_ellipse, ps_distr_linear);

part_emitter_stream(_ps_bullet_trail, _pemit1, _ptype1, 3);