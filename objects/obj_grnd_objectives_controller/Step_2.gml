

if _completed_objectives == num_objectives {
	if (!timerStarted){
		timerStarted = true;
		global.level = -1
		show_debug_message(global.level)
		timeline_index = tml_space_end;
		timeline_position = 0;
		timeline_speed = 1;
		timeline_running = true;
	}
}

