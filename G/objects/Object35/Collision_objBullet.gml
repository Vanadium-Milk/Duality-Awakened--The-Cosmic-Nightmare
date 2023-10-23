/// @description Insert description here
// You can write your code in this editor


objPlayer.furia= objPlayer.furia+5;
instance_destroy();
if (health > 0) {
    health -= 20; // Resta el daño al valor de vida
    if (health <= 0) {
        var drop_item = instance_create_layer(x,y,"Instances",acido_raper); // obj_drop_item es el nombre del objeto
    }
}






