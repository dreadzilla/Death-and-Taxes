/// @description got to next level

with (oPlayer) {
	if (hascontrol) {
		hascontrol = false;
		SlideTransition(trans_mode.goto,other.target);
	}
	
}
