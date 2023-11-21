/// @description Avoid accidental activation
if(alarm[0] == -1){
	instance_deactivate_object(self);
}