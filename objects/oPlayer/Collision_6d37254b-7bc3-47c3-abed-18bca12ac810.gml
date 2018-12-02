/// @description Collide enemy

var above_enemy = y < other.y + yspd;
var falling =  yspd > 0;

if (above_enemy and (falling or state == player.ledgegrab)) 
{
	if (!place_meeting(x, yprevious, oSolid)) {
		y = yprevious;	
	}
	
	while (!place_meeting(x,y+1,other)) {
		y++;	
	}
	
	with (other) {
		instance_destroy();	
	}
	
	yspd = -(24/3);
	audio_play_sound(aStep,5,false);
} else
{
	takedamage();	
}


