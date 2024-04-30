/// @description Insert description here
// You can write your code in this editor
if room == rm_main_menu{
	instance_deactivate_object(obj_play_button);
	instance_deactivate_object(obj_credits_button);
	instance_deactivate_object(obj_controls_button);
	instance_deactivate_object(obj_quit_button);

	obj_controls_info.visible = false;
	obj_credits_info.visible = false;

	obj_info.visible = true;
	obj_easy_button.visible = true;
	obj_normal_button.visible = true; 
	obj_hard_button.visible = true; 

} else {
	if (global.lastWinLevel != -2 and global.lastWinLevel != -4) {
		global.level = 0;
		obj_level_controller.isEnabled = true;
	} else {
		show_debug_message("In CLick Tutorial")
		obj_level_controller.isEnabled = true
		global.level = -4;
	}

}




