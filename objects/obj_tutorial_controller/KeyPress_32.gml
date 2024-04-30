/// @description Insert description here
// You can write your code in this editor
if(enable_skip){
	if room == TutorialSpace {
		obj_dialog.text = ds_stack_pop(messages);
		dialog_count +=1;
		enable_skip = array_contains(_skips,dialog_count);
		show_debug_message(dialog_count)
		show_debug_message(enable_skip)
		
		if(dialog_count == 7){
			show_debug_message("End Of Space")
			global.lastWinLevel = -4;
			global.level = -2;
			obj_level_controller.isEnabled = true;
			instance_destroy(self);
		}
	}
	
	if room == Tutorial {
		obj_dialog.text = ds_stack_pop(messages);
		dialog_count +=1;
		enable_skip = array_contains(_skips,dialog_count);
		show_debug_message(dialog_count)
		show_debug_message(enable_skip)
		
		if(dialog_count == 7){
			show_debug_message("End Of Space")
			global.lastWinLevel = -2;
			global.level = 0;
			obj_level_controller.isEnabled = true;
			instance_destroy(self);
		}
	
}


}



