/// @description Release a thunderbolt
event_inherited();

part_system_destroy(_ps);

if(charge >= 3){
	//Thunderbolt particles
	var _ps_thunderbolt = part_system_create();
	part_system_draw_order(_ps_thunderbolt, true);

	var _ptype1 = part_type_create();
	part_type_sprite(_ptype1, GM_Electricity_spr_Electricity1, false, true, false)
	part_type_size(_ptype1, 0.5, 1, 0, 0);
	part_type_scale(_ptype1, 0.5, 0.5);
	part_type_speed(_ptype1, 10, 35, 0, 0);
	part_type_direction(_ptype1, 0, 360, 0, 0);
	part_type_gravity(_ptype1, 0, 270);
	part_type_orientation(_ptype1, 0, 360, 0, 0, false);
	part_type_colour3(_ptype1, $FFC119, $FF6100, $FF0800);
	part_type_alpha3(_ptype1, 1, 0.439, 0);
	part_type_blend(_ptype1, true);
	part_type_life(_ptype1, 5, 8);

	var _ptype2 = part_type_create();
	part_type_sprite(_ptype2, spr_Electricity1, false, true, false)
	part_type_size(_ptype2, 0.5, 1, 0, 0);
	part_type_scale(_ptype2, .5, .5);
	part_type_speed(_ptype2, 10, 35, 0, 0);
	part_type_direction(_ptype2, 0, 360, 0, 0);
	part_type_gravity(_ptype2, 0, 270);
	part_type_orientation(_ptype2, 0, 360, 0, 0, false);
	part_type_colour3(_ptype2, $FFC119, $FF6100, $FF0800);
	part_type_alpha3(_ptype2, 1, 0.439, 0);
	part_type_blend(_ptype2, true);
	part_type_life(_ptype2, 2, 5);
	part_type_death(_ptype1, 2, _ptype2);

	var _ptype3 = part_type_create();
	part_type_sprite(_ptype3, spr_Electricity1, false, true, false)
	part_type_size(_ptype3, 0.5, 1, 0, 0);
	part_type_scale(_ptype3, .5, .5);
	part_type_speed(_ptype3, 0, 0, 0, 0);
	part_type_direction(_ptype3, 0, 360, 0, 0);
	part_type_gravity(_ptype3, 0, 270);
	part_type_orientation(_ptype3, 0, 360, 0, 0, false);
	part_type_colour3(_ptype3, $FFC119, $FF6100, $FF0800);
	part_type_alpha3(_ptype3, 1, 0.439, 0);
	part_type_blend(_ptype3, true);
	part_type_life(_ptype3, 30, 60);
	part_type_death(_ptype2, 1, _ptype3);

	var _pemit1 = part_emitter_create(_ps_thunderbolt);
	part_emitter_region(_ps_thunderbolt, _pemit1, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(_ps_thunderbolt, _pemit1, _ptype1, 80);

	part_system_position(_ps_thunderbolt, x, y);

	audio_play_sound_at(snd_lightning, x, y, 0, 200, 1000, 2.5, false, 3);
	
	var entities_on_radius = ds_list_create();
	var n_entities = collision_circle_list(x, y, 200, obj_entity, false, true, entities_on_radius, false);

	//Damage nearby entities
	for (var i = 0; i < n_entities; i++){
	
		if(entities_on_radius[|i].object_index == obj_enemy_azurath){
			entities_on_radius[|i].charge = 3;
			with entities_on_radius[|i]{
				event_perform(ev_other, ev_user0);
			}
		}
		
		else if(entities_on_radius[|i] == inst_Player){
			scrPlayerTakeDamage(20);
		}
		
		else if(object_get_parent(entities_on_radius[|i].object_index) == obj_prop_targeteable){
			entities_on_radius[|i].durability -= 20;
		}
		
		else{
			scrPlayDmgAnimation(entities_on_radius[|i]);
			entities_on_radius[|i].enemy.enemy_health =- 15;
		}
	}

	ds_list_destroy(entities_on_radius);
}