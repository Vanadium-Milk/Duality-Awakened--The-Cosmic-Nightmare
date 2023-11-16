/// @description Damage props
var target = instance_place(x,y,obj_targeteable)

if(target){
	scrPropTakeDamage(target,enemy.damage);
}