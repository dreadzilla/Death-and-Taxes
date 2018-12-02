/// @description init variables

fire_delay = 0;
recoil = 0;

enum gun {
	has,
	hasnot
}

state = gun.hasnot;

movetimer = 0;
movemaxtimer = 30;
moveamount= .25;