/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
objSystem.playerHP=(objSystem.playerHP+healthbost);
objSystem.playerMaxHP=(objSystem.playerMaxHP+healthbost);
instance_destroy();
draw_self();
if(objSystem.playerHP!=objSystem.playerMaxHP)
 {  
draw_text(20, 20, "+" + string(healthbost));
draw_text(20, 20, "+" + string(healthbost));} 
else  { } 
