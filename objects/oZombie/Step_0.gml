/// @description Do states

switch (state) {
#region Move right
	case (zombie.move_right):
	{
		var wall_at_right = place_meeting(x+1,y,oSolid);
		var ledge_at_right = !position_meeting(bbox_right+1,bbox_bottom+1,oSolid);
		if (wall_at_right or ledge_at_right) {
			state = zombie.move_left;
			var rnd = irandom(5);
			if (rnd == 1) audio_play_sound(aZombie,2,false);
		}
		image_xscale = 1;
		x += 1;
		break;
	}
#endregion
#region Move left
	case (zombie.move_left):
	{
		var wall_at_left = place_meeting(x-1,y,oSolid);
		var ledge_at_left = !position_meeting(bbox_left-1,bbox_bottom+1,oSolid);
		if (wall_at_left or ledge_at_left) {
			state = zombie.move_right;	
			var rnd = irandom(5);
			if (rnd == 1) audio_play_sound(aZombie,2,false);
		}
		image_xscale = -1;
		x -= 1;	
		break;
	}
	
#endregion
	
}
