/// @description Damage props
var target = instance_place(x,y,obj_prop_targeteable)

if(target){
	scrPropTakeDamage(target,enemy.damage);
}