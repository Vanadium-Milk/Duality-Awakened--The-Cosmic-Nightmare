/// @description Death events
score += enemy.score_value
part_system_draw_order(_ps, true);

var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_square);
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 0.08, 0.08);
part_type_speed(_ptype1, 5, 6, -0.2, 0);
part_type_direction(_ptype1, 0, 180, 0, 0);
part_type_gravity(_ptype1, 0.2, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, enemy.blood_color1,enemy.blood_color2,enemy.blood_color3);
part_type_alpha3(_ptype1, 1, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 5, 25);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -10, 10, -10, 10, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(_ps, _pemit1, _ptype1, 30);

part_system_position(_ps, x, y);

alarm[0] = 60;
	
if (irandom(enemy.drop_chance - 1) = 0) { //Random chances of getting loot (1 out of 5 in this case)
    var drop_item = instance_create_layer(x,y,"Drops",choose(enemy.drop_list[0],enemy.drop_list[1])); // obj_drop_item es el nombre del objeto
}
if (instance_number(obj_enemy) <= 1){  //When the last enemy dies, the next round starts
	global.round += 1;
	event_perform_object(spawn_system, ev_other,ev_user0);
}