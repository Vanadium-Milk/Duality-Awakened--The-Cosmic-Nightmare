/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
objPlayer.vida=objPlayer.vida+healthbost;
instance_destroy();
draw_self();
draw_text(20, 20, "+" + string(healthbost));