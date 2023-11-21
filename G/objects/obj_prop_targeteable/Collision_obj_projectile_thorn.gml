/// @description Inserte aquí la descripción
var projectile = instance_place(x, y, obj_projectile_thorn);
scrPropTakeDamage(self, projectile.damage);
instance_destroy(projectile);