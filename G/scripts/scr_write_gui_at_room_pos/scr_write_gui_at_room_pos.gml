///@description Write a text in the gui layer given a room position and a camera.
///@param {real} x_pos The x position in room coordinates.
///@param {real} y_pos The y position in room coordinates.
///@param {string} text The message to write.

function scr_write_gui_at_room_pos(x_pos, y_pos, text){
	draw_text((x_pos - camera_get_view_x(view_camera[0])) / global.cam_gui_ratio,(y_pos - camera_get_view_y(view_camera[0])) / global.cam_gui_ratio, text);
}