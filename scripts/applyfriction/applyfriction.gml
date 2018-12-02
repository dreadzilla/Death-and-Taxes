/// @desc applyfriction(acceleration)
/// @arg acceleration How fast to slow down

var acc = argument0;

if (xspd != 0) {
	if (abs(xspd) - acc > 0) {
		xspd -= acc * image_xscale;
	}
	else {
		xspd = 0;
	}
}