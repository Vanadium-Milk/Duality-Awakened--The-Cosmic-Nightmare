/// @description Rotating shield
shield_part_angle += 3;

//Move particles
var part_sys_x = x + 16 + lengthdir_x(shield_size, shield_part_angle)
var part_sys_y = y + lengthdir_y(shield_size * .6, shield_part_angle)

if(part_system_exists(_ps_shield)){
	part_system_position(_ps_shield, part_sys_x, part_sys_y);
	part_system_angle(_ps_shield, shield_part_angle + 90);

	//Decrease particle amount
	part_emitter_stream(_ps_shield, _pemit1_shield, _ptype1_shield, ceil(shield_size/10));
	part_type_alpha3(_ptype2, shield_size/3000, shield_size/60000, 0);
}

//Reducing collision mask
image_xscale = shield_size / max_shield_size;
image_yscale = shield_size / max_shield_size;

//Destroy shield if it gets too damaged
if(shield_size <= 60){
	instance_destroy();
}