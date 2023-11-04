/// @description Take damage
health -= objPlayer.guns[objPlayer.weapon.index].damage; // subtracts health based on weapon damage

objPlayer.furia= objPlayer.furia+5;

if (health <= 0) { //If health goes 0 or below it dies
	instance_destroy();
     
    if (irandom(enemy.drop_chance - 1) = 0) { //Random chances of getting loot (1 out of 5 in this case)
        var drop_item = instance_create_layer(x,y,"Instances",choose(enemy.drop_list[0],enemy.drop_list[1])); // obj_drop_item es el nombre del objeto
    }
	if (not instance_exists(obj_enemy)){  //When the last enemy dies, the next round starts
		global.round += 1
	}
}