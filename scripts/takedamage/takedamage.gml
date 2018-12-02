/// @desc Take damage

if (state != player.hurt) {
	state = player.hurt;
	audio_play_sound(aHurt, 8, false);
	
	image_blend = make_color_rgb(200,120,150);
	yspd = -6;
	xspd = (sign(x-other.x) * 8);
	
	move(oSolid);
	if (instance_exists(oPlayerStats)) {
		oPlayerStats.hp -= 1;	
	}
}