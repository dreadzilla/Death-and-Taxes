/// @description Dog steps

switch (state) {
#region Idle state
	case zdog.idle:
	{
		if (instance_exists(oPlayer)){
			var dis = distance_to_object(oPlayer);
			if (dis < sight and alarm[0] <= 0) 
			{
				image_speed = .5;
				if (oPlayer.x != x) {
					image_xscale = sign(oPlayer.x - x);	
				}
			}
		}
		break;
	}
#endregion
#region Jump state
	case zdog.jump:
	{
		image_index = image_number - 1;
		if (!place_meeting(x,y+1,oSolid)) {
			yspd += gravity_acc;	
		} else {
			yspd = 0;
			applyfriction(acc);
			if (xspd == 0 and yspd ==0) {
				state = zdog.idle;
				alarm[0] = 15;
				image_speed = 0;
				image_index = 0;
			}
		}
	 	break;
	}
#endregion
	
	
}
