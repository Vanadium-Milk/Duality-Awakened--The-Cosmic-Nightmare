// Create a bullet with a trail beneath in a set speed and direction
function scrShootBullet(xpos,ypos,setSpeed,setDirection,sound,setDamage, object){
	instance_create_layer(xpos,ypos,"Projectiles", object, {speed: setSpeed, direction: setDirection, image_angle: setDirection, damage:setDamage});

	//Play the sound with varying volume
	audio_play_sound_at(sound, x, y, 0, 200, 1000, 2.5, false, 1);
}