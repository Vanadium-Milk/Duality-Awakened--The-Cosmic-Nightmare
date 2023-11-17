/// @description Expand animation and trail
event_inherited();

var target_distance = point_distance(x,y,target_x,target_y)

if (target_distance < 60){
	image_xscale = 60 / target_distance;
	image_yscale = 60 / target_distance;
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_lime, 35 / target_distance);
}
	
else{
	image_xscale = 1;
	image_yscale = 1;
}

part_system_position(_ps, x, y);