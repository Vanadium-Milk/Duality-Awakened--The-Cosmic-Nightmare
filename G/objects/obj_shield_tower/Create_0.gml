/// @description Set attributes
event_inherited();

max_durability = 100;
durability = max_durability;

sprite_suffix = "spr_shield_tower"
orientable = false;

depth = - y + 3;

force_field = instance_create_depth(x + 16, y - 9, 301, obj_force_field,{shield_size: 300});

//Electricity particles
_ps = part_system_create();
part_system_draw_order(_ps, true);

var _ptype1 = part_type_create();
part_type_sprite(_ptype1, GM_Electricity_spr_Electricity1, false, true, false)
part_type_size(_ptype1, 0.5, 1, 0, 0);
part_type_scale(_ptype1, .5, .5);
part_type_speed(_ptype1, 0, 0, 0, 0);
part_type_direction(_ptype1, 0, 360, 0.1, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 360, 0, 0, false);
part_type_colour3(_ptype1, $FFC119, $FF6100, $FF0800);
part_type_alpha3(_ptype1, 1, 0.439, 0);
part_type_blend(_ptype1, true);
part_type_life(_ptype1, 50, 80);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, -10);
part_emitter_interval(_ps, _pemit1, .01, .1, time_source_units_seconds);

part_system_position(_ps, x + 16, y - 52);
part_system_depth(_ps, - y);