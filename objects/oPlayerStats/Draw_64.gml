/// @description Draw Gui based on room

if (room == rTitle) {
	draw_set_halign(fa_center);
	draw_set_font(fTitle);
	draw_text_color(room_width/2 + 1, 24 + 1, "SmockePlutt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width/2, 24, "SmockePlutt", c_red, c_red, c_red, c_red, 1);
	
	draw_set_font(fStart);
	draw_text_color(room_width/2 + 1, room_height - 48 + 1, "Press space to play", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width/2, room_height - 48, "Press space to play", c_red, c_red, c_red, c_red, 1);

}

if (room != rTitle) {
	
}