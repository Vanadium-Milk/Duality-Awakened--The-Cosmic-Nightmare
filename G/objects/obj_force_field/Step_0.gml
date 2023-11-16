/// @description Rotating shield
shield_part_angle += 3;

//Move particles
var part_sys_x = x + 16 + lengthdir_x(shield_size, shield_part_angle)
var part_sys_y = y + lengthdir_y(shield_size * .6, shield_part_angle)

part_system_position(_ps_shield, part_sys_x, part_sys_y);
part_system_angle(_ps_shield, shield_part_angle + 90);

//Decrease particle amount
part_emitter_stream(_ps_shield, _pemit1_shield, _ptype1_shield, ceil(shield_size/10));
part_type_alpha3(_ptype2, shield_size/3000, shield_size/60000, 0);

//Adjust collision mask
sprite_set_bbox(sprite_index, 300 - shield_size, 180 - shield_size * .6, shield_size + 300, (shield_size * .6) + 180);

//Destroy shield if it gets too damaged
if(shield_size <= 60){
	instance_destroy();
}