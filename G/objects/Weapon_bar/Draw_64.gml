/// @description Draw and update
draw_sprite(sprUIWeaponFrame,0,0,display_get_gui_height());

if(obj_player.guns[obj_player.weapon.index] != noone){ //Checks if there's an equipped weapon and displays the icon with the remaining ammo if so
	draw_set_font(fnt_small);
	draw_set_halign(fa_left);
	draw_set_color(#dfdf45);
	
	draw_sprite(obj_player.guns[obj_player.weapon.index].icon_sprite,obj_player.weapon.frames,0,display_get_gui_height());
	draw_text(127,display_get_gui_height() - 15,obj_player.guns[obj_player.weapon.index].ammo);
	draw_sprite_part(bullet_Icon,0,0,0,98 * obj_player.guns[obj_player.weapon.index].mag / obj_player.guns[obj_player.weapon.index].mag_capacity,10,129,display_get_gui_height() - 11);
	//Draws the bullet bar according to the proportion between the magazine and its max capacity
}