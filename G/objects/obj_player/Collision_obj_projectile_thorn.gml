/// @description Take damage from projectiles
var projectile = instance_place(x, y, obj_projectile_thorn);

scrPlayerTakeDamage(projectile.damage);
instance_destroy(projectile);