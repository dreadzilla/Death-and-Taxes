/// @description Dog init

image_speed = 0;
image_index = 0;

sight = 128;
max_spd = 4;
acc = 1.5;
gravity_acc = .5;

hp = 2;
flash = 0;
hitfrom = 0;

enum zdog {
	idle,
	jump
}

state = zdog.idle;