/// @description Swim in it's own acid.
event_inherited();

if(instance_position(x, y, obj_acid_spill)){
	action = "Swim";
}
else {
	action = "Walk";
}

if(part_system_exists(_ps)){
	scr_switch_part_sys_visibility(_ps);
}