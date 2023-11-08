/// @description Inserte aquí la descripción
event_inherited();
var target_distance = point_distance(x,y,objPlayer.x,objPlayer.y)
if (target_distance < 60){
	image_xscale = 60 / target_distance;
	image_yscale = 60 / target_distance;
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_lime, 35 / target_distance);
}
part_particles_create(_psT,x + random_range(-5,5),y + random_range(-5,5),_ptypeTrail,1);
part_type_direction(_ptypeTrail,direction + 180, direction + 180, 0, 0);