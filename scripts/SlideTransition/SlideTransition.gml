/// @desc SlideTransition(mode, target_room)
/// @arg Mode sets transition mode next, restart, goto
/// @arg Target sets target room

with(oTransition)  {
	mode = argument[0];
	if (argument_count > 1) {
		target = argument[1];	
	}
}