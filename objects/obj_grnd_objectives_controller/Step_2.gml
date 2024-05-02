

if _completed_objectives == num_objectives {
	if (!timerStarted){
		timerStarted = true;
		
		if room != rmP3Ground {
			global.level = -1
		} else {
			global.level = 6
			global.lastWinLevel += 1
		}
		
		show_debug_message(global.level)
		timeline_index = tml_space_end;
		timeline_position = 0;
		timeline_speed = 1;
		timeline_running = true;
	}
}

