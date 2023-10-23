/// @description Insert description here
// You can write your code in this editor




if (health_raster > 0) {
    health_raster -= 20; // Resta el daño al valor de vida
    if (health_raster <= 0) {
        var drop_item = instance_create_layer(x,y,"Instances_1",acido_raper);
		instance_destroy();// obj_drop_item es el nombre del objeto
    }
}





