/// @description Draw and update
draw_sprite(sprUIWeaponFrame,0,0,384);

if(objPlayer.guns[objPlayer.weapon.index] != noone){ //Checks if there's an equipped weapon and displays the icon with the remaining ammo if so
	draw_sprite(objPlayer.guns[objPlayer.weapon.index].icon_sprite,objPlayer.weapon.frames,0,384);
	draw_text_color(127,355,objPlayer.guns[objPlayer.weapon.index].ammo,#dfdf45,#dfdf45,#dfdf45,#dfdf45,1);
	draw_sprite_part(bullet_Icon,0,0,0,98 * objPlayer.guns[objPlayer.weapon.index].mag / objPlayer.guns[objPlayer.weapon.index].mag_capacity,10,129,373);
	//Draws the bullet bar according to the proportion between the magazine and its max capacity
}