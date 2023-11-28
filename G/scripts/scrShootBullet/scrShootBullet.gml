///@description Create a bullet with a trail beneath in a set speed and direction.
///@param {real} xpos X coordinate of the bullet origin.
///@param {real} ypos Y coordinate of the bullet origin.
///@param {real} set_speed The travel speed of the bullet.
///@param {real} set_direction Angle of the bullet.
///@param {real} set_damage The damage upon hit.
///@param {Asset.GMObject} object The object the bullet will take form of
///@param {Asset.GMSound} sound The sound the bullet will create when fired
///@param {real} gain (optional) The volume of the sound relative to 1

function scrShootBullet(xpos,ypos,set_speed,set_direction,set_damage, object, sound, gain = 1){
	instance_create_layer(xpos,ypos,"Projectiles", object, {speed: set_speed, direction: set_direction, image_angle: set_direction, damage: set_damage});

	//Play the sound with varying volume
	audio_play_sound_at(sound, x, y, 0, 200, 1000, 2.5, false, 1, gain * random_range(.8, 1.2));
}