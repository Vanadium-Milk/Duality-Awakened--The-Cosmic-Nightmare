/// @description Updating particles
draw_self();
if(part_system_exists(_ps_bullet_trail)){
	part_system_position(_ps_bullet_trail, x, y);
}