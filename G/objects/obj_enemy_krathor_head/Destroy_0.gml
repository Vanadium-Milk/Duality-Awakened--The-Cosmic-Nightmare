/// @description Inserte aquí la descripción

event_inherited();

ds_list_destroy(positions);

if(part_system_exists(_ps)){
	part_system_destroy(_ps);
}