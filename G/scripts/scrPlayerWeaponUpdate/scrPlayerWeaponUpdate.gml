function scrPlayerWeaponUpdate(){
	if (guns[weapon.index] == noone) { exit; }
	
	weapon.angle = point_direction(x,y-4,mouse_x,mouse_y);

	if (guns[weapon.index].frequency > 0){ //The frequency becomes a timer which counts down every loop
		weapon.frequency -= 1;
	}
	
	if (mouse_check_button(mb_left) && guns[weapon.index].ammo > 0 && weapon.frequency <= 0) {
		var bx = x + lengthdir_x(13, weapon.angle);
		var by = y - 25 + lengthdir_y(13, weapon.angle);
		
		var bullet = instance_create_layer(bx,by,"Instances",objBullet);
		bullet.speed = 5;
		bullet.direction = weapon.angle;
		guns[weapon.index].ammo -= 1;
		
		weapon.frames += 1; //Plays the sprite animation
		weapon.frequency = guns[weapon.index].frequency;
	}
	if (not mouse_check_button(mb_left)){
		weapon.frames = 0; //Stops the gun animation if it's not shooting
	}
}