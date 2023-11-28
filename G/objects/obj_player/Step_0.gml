///@description Controls and variable changes
pointing = point_direction(x,y-25,mouse_x,mouse_y);

switch (action) {
	case "Idle":
	case "Walk":
		
		if(!obj_inventory.active){
			scrPlayerMovement();
			scrPlayerCheckRoll();
		
			if(!placing_prop){
				scrPlayerWeaponUpdate();
				scrPlayerWeaponSwitch();
			}
		}
		
		break;
		
	case "Roll":
		break;
	case "Dead":
		break;
}

//Shield mechanics
shield_cooldown -= 1;
if (shield_cooldown <= 0 && shield < max_shield){
	shield += .1;
	shield_cooldown = max_shield_cooldown;
}

//Prop commands
if((keyboard_check(vk_escape) || keyboard_check(vk_tab) || keyboard_check(ord("E"))) && placing_prop){
	placing_prop = false;
}

//Move the audio listener
if (x != xprevious || y != yprevious)
{
    audio_listener_position(x, y, 0);
	audio_listener_orientation(x, y, 1, 0, y -1, 0);
}