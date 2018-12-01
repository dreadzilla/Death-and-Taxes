/// @description Initialize Player Variables

max_spd = 4;
xspd = 0;
yspd = 0;
acc = 1; // Acceleration
gravity_acc = .5;
jump_height = -9;

enum player {
	moving,
	door,
	hurt,
	death
}

state = player.moving;