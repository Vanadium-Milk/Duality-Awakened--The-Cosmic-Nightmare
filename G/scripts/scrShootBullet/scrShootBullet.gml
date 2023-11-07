// Create a bullet with a trail beneath in a set speed and direction
function scrShootBullet(xpos,ypos,setSpeed,setDirection){
	var bullet = instance_create_layer(xpos,ypos,"Projectiles",objBullet);
	bullet.speed = setSpeed;
	bullet.direction = setDirection
	bullet.image_angle = setDirection
	
	audio_play_sound(guns[weapon.index].fire_sound, 1, false); //plays the sound effect
}