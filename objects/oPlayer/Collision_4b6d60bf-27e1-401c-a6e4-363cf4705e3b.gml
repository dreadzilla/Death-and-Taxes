/// @description Increase score
++oPlayerStats.coins;
audio_play_sound(aCoin,4,false);
with (other) {
	instance_destroy();	
}
