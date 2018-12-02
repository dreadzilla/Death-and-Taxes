/// @description Insert description here
// You can write your code in this editor

if (hitbybullet == 1) {
	repeat (irandom_range(9,15)) {
		var random_x = irandom_range(-8,8);
		var random_y = irandom_range(-8,8);
	
		var particle = instance_create_layer(x + random_x, y + random_y, "Coins", oParticle);
		particle.image_blend = c_yellow;
		particle.image_speed = .5;
		particle.gravity = .5;
		particle.speed = 2;
	}
}