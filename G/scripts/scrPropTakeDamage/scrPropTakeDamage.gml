function scrPropTakeDamage(instance, damage){
	instance.durability -= damage;

	scrPlayDmgAnimation(instance);
	
	if(instance.durability <= 0){
		instance_destroy(instance);
	}
}