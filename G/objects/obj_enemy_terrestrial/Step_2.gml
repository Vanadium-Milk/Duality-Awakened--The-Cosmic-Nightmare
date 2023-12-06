/// @description Deal damage

//This forces the enemy to damage one instance at a time
if(place_meeting(x, y, target_entity)){
	if(target_entity.object_index == obj_player){
		scrPlayerTakeDamage(enemy.damage);
	}
	else{
		scr_prop_take_damage(target_entity, enemy.damage);
	}
}