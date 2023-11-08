switch (action) {
	case "Idle":
	case "Walk":
		scrPlayerMovement();
		scrPlayerWeaponUpdate();
		scrPlayerWeaponSwitch();
		scrPlayerCheckRoll();

		break;
		
	case "Roll":
		break;
}

shield_cooldown -= 1;
if (shield_cooldown <= 0 && shield < max_shield){
	shield += .1;
	shield_cooldown = max_shield_cooldown;
}