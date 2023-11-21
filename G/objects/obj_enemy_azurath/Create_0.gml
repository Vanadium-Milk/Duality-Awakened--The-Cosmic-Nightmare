/// @description Set attributes
enemy = {
	sprite: "spr_enemy_azurath",
	damage: .5,
	mov_speed: 1,
	drop_list: [obj_mineral4,obj_mineral2],
	drop_chance: 5, //likelyhood of dropping loot (1 out of n)
	score_value: 15,
	enemy_health: 30,
	//Attributes for death event
	blood_color1: c_aqua,
	blood_color2: #1a0787,
	blood_color3: #0f054b,
	death_intensity: 1.3,
	
};

shadow_size = 15;

colliding_shield = noone;
charge = 0;

event_inherited();

_ps = part_system_create();
part_system_draw_order(_ps, true);

_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_sphere);
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 0, 0, 0, 0);
part_type_direction(_ptype1, 80, 100, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $FFE100, $FFE100, $D0FF00);
part_type_alpha3(_ptype1, 0, 1, 0);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 55, 55);

_ptype2 = part_type_create();
part_type_shape(_ptype2, pt_shape_pixel);
part_type_size(_ptype2, 1, 1, -0.02, 0);
part_type_scale(_ptype2, 2, 2);
part_type_speed(_ptype2, 2, 3, -0.04, 0);
part_type_direction(_ptype2, 0, 360, 0, 30);
part_type_gravity(_ptype2, 0, 270);
part_type_orientation(_ptype2, 90, 270, 0, 0, false);
part_type_colour3(_ptype2, $F5FFB5, $D0FF00, $DCFF00);
part_type_alpha3(_ptype2, 1, 1, 0);
part_type_blend(_ptype2, false);
part_type_life(_ptype2, 30, 80);

_ptype3 = part_type_create();
part_type_sprite(_ptype3, GM_Electricity_spr_Electricity1, false, true, false)
part_type_size(_ptype3, 0.5, 1, 0, 0);
part_type_scale(_ptype3, 0.5, 0.5);
part_type_speed(_ptype3, 0, 0, 0, 0);
part_type_direction(_ptype3, 0, 360, 0.1, 0);
part_type_gravity(_ptype3, 0, 270);
part_type_orientation(_ptype3, 0, 360, 0, 0, false);
part_type_colour3(_ptype3, $FFC119, $FF6100, $FF0800);
part_type_alpha3(_ptype3, 1, 0.439, 0);
part_type_blend(_ptype3, true);
part_type_life(_ptype3, 50, 80);