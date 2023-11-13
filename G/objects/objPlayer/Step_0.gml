///@description Controls and variable changes
pointing = point_direction(x,y-25,mouse_x,mouse_y);

switch (action) {
	case "Idle":
	case "Walk":
		scrPlayerMovement();
		scrPlayerCheckRoll();
		
		if(!placing_prop){
			scrPlayerWeaponUpdate();
			scrPlayerWeaponSwitch();
		}
		
		break;
		
	case "Roll":
		break;
}

//Shield mechanics
shield_cooldown -= 1;
if (shield_cooldown <= 0 && shield < max_shield){
	shield += .1;
	shield_cooldown = max_shield_cooldown;
}

//Prop commands
if(keyboard_check(vk_escape) && placing_prop){
	placing_prop = false;
	weapon.index = 0;
}

if(placing_prop == true && mouse_check_button(mb_left) && valid_place){
	
	instance_create_layer(prop_posx, prop_posy, "Entities", obj_barrier,{orientation: prop_orientation})
}