/// @description Take damage
//Putting the bullet destruction here, because otherwise the damage is dealt multiple times
instance_destroy(instance_nearest(x,y,objBullet));
scrPlayDmgAnimation(self); //This command triggers the damage animation hosted in the parent

enemy.enemy_health -= objPlayer.guns[objPlayer.weapon.index].damage; // subtracts health based on weapon damage

objPlayer.furia= objPlayer.furia+5;

if (enemy.enemy_health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
}