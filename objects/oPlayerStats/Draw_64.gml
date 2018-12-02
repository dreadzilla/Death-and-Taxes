/// @description Draw Gui based on room

if (room == rTitle) {
	draw_set_halign(fa_center);
	draw_set_font(fTitle);
	draw_text_color(room_width/2 + 1, 48 + 1, "SmockePlutt", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width/2, 48, "SmockePlutt", c_red, c_red, c_red, c_red, 1);
	draw_set_font(fStart);
	
	draw_text_color(room_width/2 + 1, room_height/2 + 1, "...forever...", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width/2, room_height/2, "...forever...", c_red, c_red, c_red, c_red, 1);
	
	draw_set_font(fStart);
	draw_text_color(room_width/2 + 1, room_height - 48 + 1, "Press space to play", c_white, c_white, c_white, c_white, 1);
	draw_text_color(room_width/2, room_height - 48, "Press space to play", c_red, c_red, c_red, c_red, 1);

}

if (room != rTitle) {
	for (var i = 1; i <= hp; ++i) {
		draw_sprite_ext(sLife, 0, (i*25) -10 , 15, 1, 1, 0, c_white, 1);	
	}
	// Draw score
	draw_set_font(fScore);
	draw_set_halign(fa_left);
	draw_text_color(25*3 + 10+1, 0+1, "Score: " + string(coins), c_black, c_black, c_black, c_black, 1);
	draw_text_color(25*3 + 10, 0, "Score: " + string(coins), c_white, c_white, c_white, c_white, 1);
	
}
