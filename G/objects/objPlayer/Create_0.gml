event_inherited();
action = "Idle";
pointing = 0;
speed = 0;

//The third "gun" is for the prop-placing mode, is meant to be empty
guns = [noone, noone, noone];

weapon = {
	index: 0,
	angle: 0,
	frequency: 0,
	frames: 0
};

health = 15;
max_health = 15;

//shield attributes
shield = 10;
max_shield = 10;
shield_cooldown = 10;
max_shield_cooldown = 10;

rollDirection = 0;
furia=0;

//Prop variable declarations
placing_prop = false;
prop_orientation = "H";
prop_posx = 0;
prop_posy = 0;
valid_place = false;