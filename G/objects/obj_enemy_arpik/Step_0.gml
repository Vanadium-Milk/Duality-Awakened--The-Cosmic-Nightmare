/// @description stop at a certain distance

if(point_distance(x, y, target_x, target_y) < 180){
	step = 0;
	alarm[0] = 10;
	face = scrGetFace(target_x, target_y);
	if(alarm[1] == -1){
		alarm[1] = 20;
	}
}

event_inherited();