/// @description Recieve energy from shield

if(colliding_shield){
	step = 0;
	colliding_shield.shield_size -= 15;
	
	if(charge <= 3){
		charge += 1;
	}
}

switch (charge){
	case (0):
		image_blend = c_white;
		break;
	case(1):
		image_blend = #97ffff;
		var _pemit1 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit1, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit1, _ptype1, 1);
		part_emitter_interval(_ps, _pemit1, 1, 1, time_source_units_seconds);
		break;
		
	case(2):
		image_blend = #35ffff;
		var _pemit2 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit2, 0, 0, 0, 0, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit2, _ptype2, 1);
		break;
		
	case(3):
		image_blend = c_aqua;
		var _pemit3 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit3, -24, 24, -24, 24, ps_shape_ellipse, ps_distr_linear);
		part_emitter_stream(_ps, _pemit3, _ptype3, -10);
		break;
}