/// @description Expand animation and trail
event_inherited();

if(instance_exists(target_entity)){
	var target_distance = point_distance(x,y,target_entity.x,target_entity.y)

	if (target_distance < 60){
		image_xscale = 60 / target_distance;
		image_yscale = 60 / target_distance;
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_lime, 35 / target_distance);
	}
	part_system_position(_ps, x, y);
}