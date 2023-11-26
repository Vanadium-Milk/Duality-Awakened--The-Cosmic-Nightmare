/// @description Variable set
paused = false;

//selected tab
selected = 0;

//Selection of individual items
sel_grid_x = 0;
sel_grid_y = 0;
selection_index = 0;

//Anchor point of the guide
origin_x = display_get_gui_width()/2;
origin_y = display_get_gui_height()/2;

grid_x = origin_x;
grid_y = origin_y;
rows = 0;
cols = 0;
cell_w = 0;
cell_h = 0;

//sprite animation frame
frame = 0;

/*This array stores which enemies have already appeared
Indexes correspond to their frame in the asset "spr_enemy_icon" */
discovered_enemies = [
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
props = [
{
	name: "BIO-REGEN MEDKIT",
	discovered: true,
	description: "This advanced healing solution rapidly accelerates the body's natural healing process upon application, sealing wounds, and revitalizing the user's health.",
	sprite: spr_prop_medkit,
	cost: []
},
{
	name: "AEGIS BARRIER",
	discovered: true,
	description: "The Aegis Barrier functions as a versatile defensive implement, capable of absorbing and deflecting incoming attacks.",
	sprite: spr_prop_shield,
	cost: []
},
{
	name: "WIRE BARRICADE",
	discovered: true,
	description: "",
	sprite: spr_barrier_H,
	cost: []
},
{
	name: "AUTO TURRET",
	discovered: true,
	description: "",
	sprite: spr_turret_icon,
	cost: []
},
{
	name: "LAND MINE",
	discovered: true,
	description: "",
	sprite: spr_landmine,
	cost: []
},
{
	name: "SHIELD GENERATOR",
	discovered: true,
	description: "",
	sprite: spr_shield_tower,
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