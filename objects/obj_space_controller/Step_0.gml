/// @description Insert description here
// You can write your code in this editor
if(space_enemies_remaining = 0 and spawn_space_boss){
	space_boss();
	spawn_space_boss = false;
} else {
	if(space_enemies_remaining <= 0){
		//win condition
		space_reset_controller();
		room_goto(rmP1Ground)
	}
}






