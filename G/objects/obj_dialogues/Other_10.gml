/// @description Corresponding action
if(type = "intro"){
	room_goto_next();
}
else if (!instance_exists(obj_button)){
	origin_y = 150;
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_button);
}