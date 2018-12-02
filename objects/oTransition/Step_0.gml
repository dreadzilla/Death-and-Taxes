/// @description Do transitions

if (mode != trans_mode.off) {
	if (mode == trans_mode.intro) {
		percent = max(0,percent - max((percent/10),0.005));	
	} else {
		percent = min(1,percent + max(((1-percent)/10),0.005));	
	}
	if ((percent == 1) || (percent == 0)) {
		switch(mode) {
			case trans_mode.intro:
			{
				mode = trans_mode.off;
				break;
			}	
			case trans_mode.next:
			{
				mode = trans_mode.intro;
				room_goto_next();
				break;
			}
			case trans_mode.goto:
			{
				mode = trans_mode.intro;
				room_goto(target);
				break;
			}
			case trans_mode.restart:
			{
				game_restart();
				break;
			}
		}
	}
}
