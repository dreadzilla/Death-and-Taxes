/// @description Shoot enemy

with (other) {
	if (hp <= 0) {
		instance_destroy();
	} else {
		hp--;
		flash = 3;
		//hitfrom = other.direction;
		x = xprevious;
	}
}

instance_destroy();
