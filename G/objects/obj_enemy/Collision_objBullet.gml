/// @description Take damage
//Putting the bullet destruction here, because otherwise the damage is dealt multiple times
var bullet = instance_nearest(x,y,objBullet);
enemy.enemy_health -= bullet.damage; // subtracts health based on weapon damage
instance_destroy(bullet);

scrPlayDmgAnimation(self); //This command triggers the damage animation hosted in the parent

objPlayer.furia += 5;