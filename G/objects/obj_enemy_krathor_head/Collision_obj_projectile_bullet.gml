///@description Only damageable if tail is already destroyed

var bullet = instance_place(x,y,obj_projectile_bullet);

if(type == "tail"){
	scr_enemy_take_damage(self, bullet.damage);
}
else{
	audio_play_sound_at(snd_inmune, x, y, 0, 200, 1000, 2.5, false, 3);
}

instance_destroy(bullet);