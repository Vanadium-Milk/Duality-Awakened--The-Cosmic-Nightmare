/// @description Take damage
//Putting the bullet destruction here, because otherwise the damage is dealt multiple times
var bullet = instance_place(x,y,obj_projectile_bullet);

scr_enemy_take_damage(self, bullet.damage);
instance_destroy(bullet);

obj_player.furia += 5;