function scrPlayerWeaponUpdate(){
	if (guns[weapon.index] == noone) { exit; }
	
	weapon.angle = pointing
	
	if (guns[weapon.index].frequency > 0){ //The frequency becomes a timer which counts down every loop
		weapon.frequency -= 1;
	}
	
	if (mouse_check_button(mb_left)){
		if (weapon.frequency <= 0 && (guns[weapon.index].mag > 0)){ //to fire the gun magazine has to have at least a bullet
			
			var bx = x + lengthdir_x(13, weapon.angle);
			var by = y - 25 + lengthdir_y(13, weapon.angle);
		
			//creating the bullet
			scrShootBullet(bx,by,guns[weapon.index].bullet_speed, weapon.angle, guns[weapon.index].fire_sound, guns[weapon.index].damage, obj_projectile_bullet);

			guns[weapon.index].mag -= 1;
		
			weapon.frames += 1; //Plays the sprite animation
			weapon.frequency = guns[weapon.index].frequency;
		}
	}

	else {
		weapon.frames = 0; //Stops the gun animation if it's not shooting
	}
	
	//Reloading
	if((keyboard_check(ord("R")) || (mouse_check_button(mb_left) && guns[weapon.index].mag <= 0)) && guns[weapon.index].mag < guns[weapon.index].mag_capacity && guns[weapon.index].ammo > 0){
		weapon.frames = 0;
		weapon.frequency = 50; //Reloading the weapon adds a delay
		audio_play_sound(guns[weapon.index].reload_sound,2,false)
			
		if(guns[weapon.index].ammo > guns[weapon.index].mag_capacity){ //This is just to make sure it doesn't run into negatives
			guns[weapon.index].ammo -= guns[weapon.index].mag_capacity - guns[weapon.index].mag;
			guns[weapon.index].mag = guns[weapon.index].mag_capacity;
			
		}
			
		else {
			guns[weapon.index].mag = guns[weapon.index].ammo;
			guns[weapon.index].ammo = 0;
		}
	}
}