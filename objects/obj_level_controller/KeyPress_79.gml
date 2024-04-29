/// @description increase ammo
// You can write your code in this editor
if(instance_exists(obj_player_parent)){
	show_debug_message("Increase Ammo by 100");
	obj_player_parent.current_weapon._held_ammo += 100 
}





