/// @description Create ooze

with (instance_create_layer(x + random(sprite_width),y - sprite_height /3, "Pit", oParticle)) {
	image_blend = c_green;	
}

alarm[0] = random_range(10,20);
