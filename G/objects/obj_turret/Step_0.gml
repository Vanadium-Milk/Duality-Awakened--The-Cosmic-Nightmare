/// @description Aim and shoot

point_target = 0; //Reset default angle

fire_rate_refresh -= 1; //Countdown fire rate

//Target nearest enemy
if(instance_exists(obj_enemy)){
	var nearest_enemy = instance_nearest(x,y,obj_enemy);
	
	if(point_distance(x, y, nearest_enemy.x, nearest_enemy.y) <= 200){
		point_target = point_direction(rot_axis_x, rot_axis_y, nearest_enemy.x, nearest_enemy.y);
		
		//Shoot
		if(fire_rate_refresh <= 0){
			scrShootBullet(rot_axis_x + lengthdir_x(10, pointing), rot_axis_y + lengthdir_y(10, pointing), 8, pointing, 3, obj_projectile_bullet, snd_bala, .5);
			fire_rate_refresh = fire_rate;
			
			frame += 1; //Play fire animation
		}
	}
	else{
		frame = 0; //reset firing animation
	}
}
else{
	frame = 0;
}

//Add a little delay to the aiming mechanic
if(point_target - pointing < 360 - point_target + pointing){
	pointing += (point_target - pointing)/10;
}
else{
	pointing -= (360 - point_target + pointing)/10;
}

//This is just to make the getFace script work
direction = pointing