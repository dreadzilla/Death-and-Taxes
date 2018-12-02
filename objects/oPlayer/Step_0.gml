/// @description Controlling the player

if (hascontrol) {
#region Set up controls for the player
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	up = keyboard_check(vk_space);
	down = keyboard_check(ord("S"));
	up_release = keyboard_check_released(vk_space);
#endregion
}

#region State Machine
switch (state) {
#region Move State
	case player.moving:
	if (xspd == 0) {
		sprite_index = sPlayer_idle;
	}
	else {
		sprite_index = sPlayer_walk;
	}
	//Check if player is on the ground
	if (!place_meeting(x, y + 1, oSolid)) {
		yspd += gravity_acc;
		
		//Player is in the air
		sprite_index = sPlayer_jump; // jump
		image_index = (yspd > 0);
		
		//Control the jump height
		if (up_release and yspd < -6) {
			yspd = -3;
		}
	}
	else {
		yspd = 0;
		
		//Jumping code
		if (up) {
			yspd = jump_height;
			audio_play_sound(aJump, 5, false);
		}
	}
	//Change direction of sprite
	if (xspd != 0) {
		image_xscale = sign(xspd);
	}
	//Check for moving left or right
	if (right or left) {
		xspd += (right - left) * acc;
		xspd = clamp(xspd, -max_spd, max_spd);
	}
	else {
		applyfriction(acc);
	}
	
	if (place_meeting(x, y + yspd + 1, oSolid) and yspd > 0) {
		audio_play_sound(aStep, 6, false);
	}
	
	move(oSolid);
	
	//Check for ledge grab state
	var falling = y - yprevious > 0;
	var wasnt_wall = !position_meeting(x + grab_width * image_xscale, yprevious, oSolid);
	var is_wall = position_meeting(x + grab_width * image_xscale, y, oSolid);
	
	if (falling and wasnt_wall and is_wall) {
		xspd = 0;
		yspd = 0;
		
		//Move against the ledge
		while (!place_meeting(x + image_xscale, y, oSolid)) {
			x += image_xscale;
		}
		
		//Check vertical position
		while (position_meeting(x + grab_width * image_xscale, y - 1, oSolid)) {
			y -= 1;
		}
		
		//Change sprite and state
		sprite_index = sPlayer_ledge_grab;
		state = player.ledgegrab;
		
		audio_play_sound(aStep, 6, false);
	}
	
	break;
#endregion
#region Ledge Grab state
	case player.ledgegrab:
	{
		if (down) {
			state = player.moving;
		}
		if (up) {
			state = player.moving;
			yspd = jump_height;
		}
	}
	break;
#endregion

#region Hurt State
	case player.hurt:
	{
		sprite_index = sPlayer_hurt;
		if(xspd != 0) {
			image_xscale = sign(xspd);	
		}
		if (!place_meeting(x,y+1,oSolid)) {
			yspd += gravity_acc;	
		} else {
			yspd = 0;
			applyfriction(acc);
		}
		directionMoveBounce(oSolid);
		if ((xspd == 0 and yspd == 0) or oPlayerStats.hp <= 0) {
			if (oPlayerStats.hp <= 0) {
				state = player.death;	
			} else {
				image_blend = c_white;
				state = player.moving;
			}
		}
		
		break;	
	}
#endregion
#region Death State
	case player.death:
	{
		with(oPlayerStats) {
			hp = max_hp;
			coins = 0;
		}
		
		if (alarm[0] < 0) {
			alarm[0] = room_speed;
		}
		
		break;
	}
	
	case player.noop:
		sprite_index = sPlayer_idle;
	break;

#endregion


}
#endregion