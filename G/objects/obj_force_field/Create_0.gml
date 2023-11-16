/// @description Particle settings

sprite_index = sprite_duplicate(spr_shield_tower_ff);
sprite_collision_mask(sprite_index, false, 2, 0, 0, 600, 360, bboxkind_ellipse, 255);

shield_radius_x = 0;
shield_radius_y = 0;

//Shield particles
shield_part_angle = 0;

_ps_shield = part_system_create();
part_system_draw_order(_ps_shield, true);
part_system_global_space(_ps_shield, true);

var _ptype2 = part_type_create();
part_type_shape(_ptype2, pt_shape_sphere);
part_type_size(_ptype2, 1, 1, 0, 0);
part_type_scale(_ptype2, 2, 2);
part_type_speed(_ptype2, 0, 0, 0, 0);
part_type_direction(_ptype2, 80, 100, 0, 0);
part_type_gravity(_ptype2, 0, 270);
part_type_orientation(_ptype2, 0, 0, 0, 0, false);
part_type_colour3(_ptype2, #1000FF, $FFA500, $FFD400);
part_type_alpha3(_ptype2, .1, .05, 0);
part_type_blend(_ptype2, false);
part_type_life(_ptype2, 80, 80);

var _pemit2 = part_emitter_create(_ps_shield);
part_emitter_region(_ps_shield, _pemit2, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(_ps_shield, _pemit2, _ptype2, 1);

var _ptype1_shield = part_type_create();
part_type_shape(_ptype1_shield, pt_shape_square);
part_type_size(_ptype1_shield, 0.1, 0.05, 0, 0);
part_type_scale(_ptype1_shield, .8, .8);
part_type_speed(_ptype1_shield, .01, .3, 0, 0);
part_type_direction(_ptype1_shield, 0, 360, 0, 0);
part_type_gravity(_ptype1_shield, 0, 270);
part_type_orientation(_ptype1_shield, 0, 0, 0, 0, false);
part_type_colour3(_ptype1_shield, $FFFFFF, $FFF600, $FFBB00);
part_type_alpha3(_ptype1_shield, 1, 1, 0);
part_type_blend(_ptype1_shield, false);
part_type_life(_ptype1_shield, 30, 80);

var _pemit1_shield = part_emitter_create(_ps_shield);
part_emitter_region(_ps_shield, _pemit1_shield, -20, 20, -8, 8, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(_ps_shield, _pemit1_shield, _ptype1_shield, 40);

part_system_depth(_ps_shield, - 2048)