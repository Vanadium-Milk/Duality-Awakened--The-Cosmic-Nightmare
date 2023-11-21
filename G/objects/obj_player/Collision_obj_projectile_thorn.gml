/// @description Inserte aquí la descripción
var projectile = instance_place(x, y, obj_projectile_thorn);

scrPlayerTakeDamage(projectile.damage);
instance_destroy(projectile);