/// @description Shoot coin

with (other) {
	hitbybullet = 1;
	instance_destroy();
	audio_play_sound(aCoin_explode,2,false);
}

instance_destroy();