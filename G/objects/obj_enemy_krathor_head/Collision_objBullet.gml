///@description Only damageable if tail is already destroyed

var bullet = instance_place(x,y,objBullet);

if(type == "tail"){

	enemy.enemy_health -= bullet.damage; // subtracts health based on weapon damage

	scrPlayDmgAnimation(self); //This command triggers the damage animation hosted in the parent

	objPlayer.furia += 5;
}
else{
	audio_play_sound_at(snd_inmune, x, y, 0, 200, 1000, 2.5, false, 3);
}

instance_destroy(bullet);