/// @description Init zombie

enum zombie {
	move_right,
	move_left
}
hp = 3;
flash = 0;
hitfrom = 0;

state = choose(zombie.move_right, zombie.move_left);

