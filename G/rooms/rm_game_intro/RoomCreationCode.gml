//Interface defaults
surface_resize(application_surface, display_get_width(), display_get_height())

window_set_fullscreen(true);
display_set_gui_size(display_get_width()/2, display_get_height()/2); 
draw_set_valign(fa_bottom);

//audio model
audio_falloff_set_model(audio_falloff_inverse_distance_clamped);

window_set_cursor(cr_none);
cursor_sprite = aim_cursor;

//Setting the first level as non-persistent
room_set_persistent(rm_level_1, false);

//This variable defines if the game has already been played
global.new_game = true;

/*This array stores which enemies have already appeared
Indexes correspond to their frame in the asset "spr_enemy_icon" */
global.enemies = [
{
	name: "SPIKY",
	discovered: false,
	description: "Is an amorphous ball  that naturally swims on acid pools, however, this creature is very curious and often will go on land, throws acid as a defense mechanism.",
	sprite: spr_enemy_spikyWalkR,
	drops: [spr_mineral_coriumite, spr_mineral_xenthrite]
},
{
	name: "FLYAIL",
	discovered: false,
	description: "This flying creature can only be directed by the wind, however it has a stretching tongue capable of grappling to any surface, acting like an anchor.",
	sprite: spr_enemy_flyailWalkR,
	drops: [spr_mineral_aetherium, spr_mineral_chronium]
},
{
	name: "RASTER",
	discovered: false,
	description: "Raster's composition consists of an extremely potent and volatile acid, capable of swiftly dissolving various materials upon contact. Even brief exposure to this corrosive substance can cause severe burns and damage.",
	sprite: spr_enemy_rasterWalkD,
	drops: [spr_drop_acid]
},
{
	name: "KRATHOR",
	discovered: false,
	description: "",
	sprite: spr_enemy_krathor_headWalkR,
	drops: [spr_mineral_coriumite, spr_mineral_pyrestone]
},
{
	name: "AZURATH",
	discovered: false,
	description: "",
	sprite: spr_enemy_azurathWalkR,
	drops: [spr_mineral_aetherium, spr_mineral_cryonite]
},
{
	name: "ARPIK",
	discovered: false,
	description: "",
	sprite: spr_enemy_arpikWalkD,
	drops: [spr_mineral_xenthrite, spr_mineral_chronium]
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
},
{
	name: "",
	discovered: false,
	description: ""
}];

//PROPS -------------------------------------------------------------------------------------------------------
global.props = [
{
	name: "OUTPOST",
	object: obj_base,
	discovered: true,
	description: "",
	cost: [],
	sprite_suffix: "spr_base",
	orientable: false
},
{
	name: "BIO-REGEN MEDKIT",
	discovered: true,
	description: "This advanced healing solution rapidly accelerates the body's natural healing process upon application, sealing wounds, and revitalizing the user's health.",
	sprite_suffix: "spr_prop_medkit",
	orientable: false,
	cost: []
},
{
	name: "AEGIS BARRIER",
	discovered: true,
	description: "The Aegis Barrier functions as a versatile defensive implement, capable of absorbing and deflecting incoming attacks.",
	sprite_suffix: "spr_prop_shield",
	orientable: false,
	cost: []
},
{
	name: "WIRE BARRICADE",
	object: obj_barrier,
	discovered: true,
	description: "",
	cost: [],
	sprite_suffix: "spr_barrier_",
	orientable: true
},
{
	name: "AUTO TURRET",
	object: obj_turret,
	discovered: true,
	description: "",
	cost: [],
	sprite_suffix: "spr_turret_icon",
	orientable: false
},
{
	name: "LAND MINE",
	object: obj_landmine,
	discovered: true,
	description: "",
	cost: [],
	sprite_suffix: "spr_landmine",
	orientable: false
},
{
	name: "SHIELD GENERATOR",
	object: obj_shield_tower,
	discovered: true,
	description: "",
	cost: [],
	sprite_suffix: "spr_shield_tower",
	orientable: false
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
},
{
	name: "",
	discovered: false,
	description: "",
	sprite: noone,
	cost: []
}
]