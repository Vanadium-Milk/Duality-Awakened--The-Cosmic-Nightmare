/// @description add charge particles
var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, 1);
part_emitter_interval(_ps, _pemit1, 1, 1, time_source_units_seconds);

var _pemit2 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit2, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(_ps, _pemit2, _ptype2, 1);		

var _pemit3 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit3, -24, 24, -24, 24, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(_ps, _pemit3, _ptype3, -10);

image_blend = c_aqua;