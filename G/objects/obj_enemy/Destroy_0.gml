/// @description Death events
score += enemy.score_value
	
if (irandom(enemy.drop_chance - 1) = 0) { //Random chances of getting loot (1 out of 5 in this case)
    var drop_item = instance_create_layer(x,y,"Drops",choose(enemy.drop_list[0],enemy.drop_list[1])); // obj_drop_item es el nombre del objeto
}
if (instance_number(obj_enemy) <= 1){  //When the last enemy dies, the next round starts
	global.round += 1;
	event_perform_object(spawn_system, ev_other,ev_user0);
}