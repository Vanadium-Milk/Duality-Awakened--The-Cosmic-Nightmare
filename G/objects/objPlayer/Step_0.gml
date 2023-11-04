switch (action) {
	case "Idle":
	case "Walk":
		scrPlayerMovement();
		scrPlayerWeaponUpdate();
		scrPlayerWeaponSwitch();
		scrPlayerCheckRoll();

		break;
		
	case "Roll":
		scrCharMoveTo(1.5, rollDirection);
		break;
}
// Voltea el sprite hacia la dirección del mouse sin afectar el movimiento
sprite_index = asset_get_index("sprPlayer" + action + scrGetFace(mouse_x,mouse_y));

if (mouse_check_button_pressed(mb_left)) {
     window_set_cursor(cr_none);
cursor_sprite=Sprite68;
} else {
    // El botón izquierdo del mouse no está siendo presionado.
    // Aquí puedes ocultar el objeto que mostraste antes, si es necesario.
  window_set_cursor(cr_none);
cursor_sprite=Sprite68;
}





