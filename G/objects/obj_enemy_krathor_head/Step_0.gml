/// @description Inserte aquí la descripción
event_inherited();

if(ds_exists(positions, ds_type_list)){
	ds_list_insert(positions, 0, body_rot);
	ds_list_insert(positions, 0, y);
	ds_list_insert(positions, 0, x);

	if(ds_list_size(positions) == body_offset){
		last = instance_create_layer(x, y, "Entities", obj_enemy_krathor_body, {offset: ds_list_size(positions), leading: last, head: main});
	}

	if ((ds_list_size(positions) - body_offset) % (body_offset*2) == 0 && ds_list_size(positions) - body_offset < body_offset * 10){
		last = instance_create_layer(x, y, "Entities", obj_enemy_krathor_body, {offset: ds_list_size(positions), leading: last, head: main});
	}
	else if (ds_list_size(positions) - body_offset == body_offset * 10){
		instance_create_layer(x, y, "Entities", obj_enemy_krathor_body, {offset: ds_list_size(positions), type: "tail", leading: last, head:main});
		
		part_emitter_interval(_ps, _pemit1, 5, 5, time_source_units_seconds);
		alarm[1] = 60;
	}
	
}