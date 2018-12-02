/// @description Shake a bit

if (state == gun.hasnot) {
/// @description Shake a bit
	++movetimer;
	y += moveamount;

	if (movetimer > movemaxtimer) {
		movetimer = 0;
		moveamount *= -1;
	}	
	
}