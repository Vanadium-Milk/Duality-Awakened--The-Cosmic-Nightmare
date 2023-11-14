// Create a bullet with a trail beneath in a set speed and direction
function scrShootBullet(xpos,ypos,setSpeed,setDirection,sound,setDamage){
	instance_create_layer(xpos,ypos,"Projectiles",objBullet,{speed: setSpeed, direction: setDirection, image_angle: setDirection, damage:setDamage});

	audio_play_sound(sound, 1, false); //plays the sound effect
}