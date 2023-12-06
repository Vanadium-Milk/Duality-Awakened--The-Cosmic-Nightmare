///@description Automatically turn on/off particle systems depending on instance visibility
///@param {Id.ParticleSystem} particle_system The id of the particle system to switch visibility

function scr_switch_part_sys_visibility(particle_system){
	if(visible){
		part_system_automatic_draw(particle_system, true);
	}
	else{
		part_system_automatic_draw(particle_system, false);
	}
}