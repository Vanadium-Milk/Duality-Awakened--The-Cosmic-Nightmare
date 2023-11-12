/// @description Show durability
draw_self();
if(durability < max_durability){
	draw_healthbar(x + (sprite_width/2) - 8, y - sprite_height - 3, x + (sprite_width/2) + 8, y - sprite_height, durability / max_durability * 100, c_black, c_red, c_green, 0 ,true , false);
}