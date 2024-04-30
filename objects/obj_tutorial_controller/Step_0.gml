/// @description Insert description here
// You can write your code in this editor

if room == TutorialSpace {
	if(not enable_skip){
		if(dialog_count = 5){
			instance_activate_object(obj_basic_enemy);
		
			if(global.enemiesDestroyed == 2 and room == TutorialSpace){
					obj_dialog.text = ds_stack_pop(messages);
					dialog_count +=1;
					enable_skip = array_contains(_skips, dialog_count);
					show_debug_message(dialog_count)
					show_debug_message(enable_skip)
			} else  if (global.enemiesDestroyed == 2 and room == TutorialSpace){
					obj_dialog.text = ds_stack_pop(messages);
					dialog_count +=1;
					enable_skip = array_contains(_skips, dialog_count);
					show_debug_message(dialog_count)
					show_debug_message(enable_skip)
			
			}
		} 
	
	}
	
	if(dialog_count = 3 or dialog_count = 5){
	obj_player_parent.is_disabled = false;
	} else {
		obj_player_parent.is_disabled = true;
	}
	
	
	switch(dialog_count){
		case 3: obj_dialog.subtext = "PRESS W A S D TO CONTINUE" break;
		case 5: obj_dialog.subtext = "DESTROY THE ENEMIES TO CONTINUE" break;
		default: obj_dialog.subtext = "PRESS SPACE TO CONTINUE";
		
	}
}



if room == Tutorial {
	if(not enable_skip){
		if(dialog_count = 5){
			instance_activate_object(obj_basic_enemy);
		
			if(global.enemiesDestroyed == 5){
					obj_dialog.text = ds_stack_pop(messages);
					dialog_count +=1;
					enable_skip = array_contains(_skips, dialog_count);
					show_debug_message(dialog_count)
					show_debug_message(enable_skip)
			} 
		} 
	
	}
	
	if(dialog_count = 3 or dialog_count = 5){
	obj_player_parent.is_disabled = false;
	} else {
		obj_player_parent.is_disabled = true;
	}
	
	
	switch(dialog_count){
		case 3: obj_dialog.subtext = "PRESS W A S D TO CONTINUE" break;
		case 5: obj_dialog.subtext = "DESTROY THE ENEMIES TO CONTINUE" break;
		default: obj_dialog.subtext = "PRESS SPACE TO CONTINUE";
		
	}
}




	





