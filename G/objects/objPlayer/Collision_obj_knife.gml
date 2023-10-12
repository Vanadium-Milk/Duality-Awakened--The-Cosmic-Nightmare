/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// En el evento "Collision" del objeto del personaje (obj_personaje)

if (place_meeting(x, y, obj_knife)) {
    // Verificar si el personaje puede recoger el cuchillo (por ejemplo, si tiene suficiente espacio en su inventario)
    if (puedeRecogerCuchillo) {
        // Aquí puedes agregar código para realizar acciones cuando se recoge el cuchillo, como aumentar la cantidad de cuchillos en el inventario del personaje
        cuchillosRecogidos += 1;
        
        // Destruir el objeto del cuchillo para eliminarlo del juego
        instance_destroy(obj_cuchillo);
    }
}

