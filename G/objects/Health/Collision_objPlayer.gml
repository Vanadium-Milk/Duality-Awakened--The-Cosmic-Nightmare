/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
objSystem.playerHP=(objSystem.playerHP+healthbost);
instance_destroy();
draw_self();
draw_text(20, 20, "+" + string(healthbost));