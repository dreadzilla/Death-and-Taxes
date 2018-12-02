/// @description Goto jump state

if (state == zdog.idle) {
	if(instance_exists(oPlayer)) {
		xspd = sign(oPlayer.x - x) * max_spd;
		yspd = -abs(xspd * 2);
	}
	move(oSolid);
	state = zdog.jump;
	audio_play_sound(aZdog,4,false);
	
}


