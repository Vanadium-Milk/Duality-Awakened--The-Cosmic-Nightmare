/// @description Draw cannon
event_inherited()

draw_sprite_ext(asset_get_index("spr_turret_" + scrGetFaceAngle(direction)), frame, rot_axis_x, rot_axis_y, 1, 1, pointing, c_white, 1);