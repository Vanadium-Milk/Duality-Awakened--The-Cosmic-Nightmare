/// @description Particle system
event_inherited();

if(part_system_exists(_ps)){
	part_system_position(_ps, x, y - 30);
}