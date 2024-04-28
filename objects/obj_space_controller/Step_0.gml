/// @description Insert description here
// You can write your code in this editor
if(space_enemies_remaining = 0 and spawn_space_boss){
	space_boss();
	spawn_space_boss = false;
}

if(space_enemies_remaining == 0){
	if (!timerStarted){
		timerStarted = true;
		timeline_index = tml_space_end;
		timeline_position = 0;
		timeline_speed = 1;
		timeline_running = true;
	}

}







