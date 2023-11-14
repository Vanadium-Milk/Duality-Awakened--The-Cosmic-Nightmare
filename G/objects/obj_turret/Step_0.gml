/// @description Aim cannon
point_target = 0;

fire_rate_refresh -= 1;

if(instance_exists(obj_enemy)){
	var nearest_enemy = instance_nearest(x,y,obj_enemy);
	
	if(point_distance(x, y, nearest_enemy.x, nearest_enemy.y) <= 200){
		point_target = point_direction(rot_axis_x, rot_axis_y, nearest_enemy.x, nearest_enemy.y);
		
		
		if(fire_rate_refresh <= 0){
			scrShootBullet(rot_axis_x + lengthdir_x(10, pointing), rot_axis_y + lengthdir_y(10, pointing), 8, pointing, snd_bala, 3);
			fire_rate_refresh = fire_rate;
		}
	}
}

if(point_target - pointing < 360 - point_target + pointing){
	pointing += (point_target - pointing)/10;
}
else{
	pointing -= (360 - point_target + pointing)/10;
}

direction = pointing