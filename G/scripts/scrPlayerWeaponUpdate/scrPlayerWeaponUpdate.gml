function scrPlayerWeaponUpdate(){
	if (guns[weapon.index] == noone) { exit; }
	
	weapon.angle = point_direction(x,y-4,mouse_x,mouse_y);
	
	if (guns[weapon.index].frequency > 0){ //The frequency becomes a timer which counts down every loop
		weapon.frequency -= 1;
	}
	
	if (mouse_check_button(mb_left) && weapon.frequency <= 0){
		if (guns[weapon.index].mag > 0){ //to fire the gun magazine has to have at least a bullet
			var bx = x + lengthdir_x(13, weapon.angle);
			var by = y - 25 + lengthdir_y(13, weapon.angle);
		
			var bullet = instance_create_layer(bx,by,"Instances",objBullet);
			bullet.speed = 8;
			bullet.direction = weapon.angle;
			bullet.image_angle = weapon.angle;
			guns[weapon.index].mag -= 1;
		
			weapon.frames += 1; //Plays the sprite animation
			weapon.frequency = guns[weapon.index].frequency;
			
			audio_play_sound(bala, 1, false); //plays the sound effect
		}
		else if(guns[weapon.index].ammo > 0) { //If not, an automatic reload is performed and the ammo is subtracted
			
			weapon.frequency = 50; //Reloading the weapon adds a delay
			
			if(guns[weapon.index].ammo > guns[weapon.index].mag_capacity){ //This is just to make sure it doesn't run into negatives
				guns[weapon.index].mag = guns[weapon.index].mag_capacity;
				guns[weapon.index].ammo -= guns[weapon.index].mag_capacity;
			}
			
			else {
				guns[weapon.index].mag = guns[weapon.index].ammo;
				guns[weapon.index].ammo = 0;
			}
		}
	}

	else {
		weapon.frames = 0; //Stops the gun animation if it's not shooting
	}
}