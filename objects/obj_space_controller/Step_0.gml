/// @description Insert description here
// You can write your code in this editor
if(space_enemies_remaining = 0 and spawn_space_boss){
	space_boss();
	spawn_space_boss = false;
}

if(space_enemies_remaining == 0){
	instance_destroy(self);
}







