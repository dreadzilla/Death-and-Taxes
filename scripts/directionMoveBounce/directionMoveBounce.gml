/// @description directionMoveBounce(coll_object)
/// @param coll_object
var object_to_move = argument0;

//Horizontal collision
if (place_meeting(x + xspd, y, object_to_move)) {
	while (!place_meeting(x + sign(xspd),y, object_to_move)) { //Move pixel perfect
		x += sign(xspd);
	}
	xspd = -(xspd/4);
}

x += xspd;

//Vertical collision
if (place_meeting(x, y + yspd, object_to_move)) {
	while (!place_meeting(x, y + sign(yspd), object_to_move)) { // Move pixel perfect
		y += sign(yspd);
	}
	yspd = -(yspd/4);
	if (abs(yspd) < 4) {
	 yspd = 0;	
	}
}

y += yspd;