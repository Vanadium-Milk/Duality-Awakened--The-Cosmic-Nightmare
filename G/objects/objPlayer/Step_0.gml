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
// Voltea el sprite hacia la dirección del mouse sin afectar el movimiento
sprite_index = asset_get_index("sprPlayer" + action + scrGetFace(mouse_x,mouse_y));





