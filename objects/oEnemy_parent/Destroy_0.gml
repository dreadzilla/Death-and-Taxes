/// @description Explode it!

repeat (irandom_range(9,15)) {
	var random_x = irandom_range(-8,8);
	var random_y = irandom_range(-8,8);
	
	var particle = instance_create_layer(x + random_x, y + random_y, "Enemies", oParticle);
	particle.image_blend = c_green;
	particle.image_speed = .5;
	particle.gravity = .5;
	particle.speed = 2;
}
