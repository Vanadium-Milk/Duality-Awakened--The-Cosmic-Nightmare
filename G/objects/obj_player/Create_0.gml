event_inherited();
action = "Idle";
pointing = 0;
speed = 0;

guns = [
{
	sprite: "sprGun",
	icon_sprite: minigun_Icon,
	fire_sound: snd_bala,
	reload_sound: snd_reload,
	object: object_index,
	ammo: 50,
	maxAmmo: 999,
	frequency: 8, //Wait time for each bullet to fire
	mag_capacity: 20,
	mag: 20,
	bullet_speed: 12,
	damage: 5
},
noone];

weapon = {
	index: 0,
	angle: 0,
	frequency: 0,
	frames: 0
};

health = 15;
max_health = 15;

shadow_size = 10;

//shield attributes
shield = 10;
max_shield = 10;
shield_cooldown = 10;
max_shield_cooldown = 10;

rollDirection = 0;
furia=0;

//Starting with the base placement
selected_prop = noone;
placing_prop = false;
prop_sprite = spr_collision_mask; //Just a placeholder
prop_posx = 0;
prop_posy = 0;
valid_place = false;
selected_slot = undefined;