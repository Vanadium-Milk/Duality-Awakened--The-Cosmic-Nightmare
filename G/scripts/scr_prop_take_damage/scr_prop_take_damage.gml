///@description reduce durability of a prop by a given amount of damage.
///@param {Id.Instance} instance The prop to recieve the damage (must be a child of obj_prop) self if omitted.
///@param {real} damage The amount of damage to recieve.

function scr_prop_take_damage(instance = self, damage){
	instance.durability -= damage;

	scrPlayDmgAnimation(instance);
	
	if(instance.durability <= 0){
		instance_destroy(instance);
	}
}