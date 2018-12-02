/// @description We collide with the gun

if (state == gun.hasnot) {
	state = gun.has;
	audio_play_sound(aGun_pickup,3,false);
}
