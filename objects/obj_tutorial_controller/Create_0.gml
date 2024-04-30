/// @description Insert description here
// You can write your code in this editor


if room == TutorialSpace {
	
	messages = ds_stack_create();
	obj_player_parent.is_disabled = true;
	
	instance_deactivate_object(obj_basic_enemy);
	ds_stack_push(messages, 
		"Good work, soldier! Now, let's take this simulation to the range!", ////6 skip by space
		"Shoot the Reds with left and right click to fire your primary and secondary weapons", //5 
		"Good work, Soldier, but we got two bogies inbound!!", // 4 skip by space
		"Press WASD to move around, and mouse to face a new direction", //3
		"Today you complete your training to go liberate space from the Red Menace", //2 skip by space
		"Welcome Soldier", //1 skip by space
	)
	
	dialog_count = 0;
	enable_dialog = true;
	enable_skip = false;
	_skips = [1,2,4,6];
	
	obj_dialog.text = ds_stack_pop(messages);
	dialog_count +=1;
	enable_skip = array_contains(_skips,dialog_count);
	show_debug_message(dialog_count)
	show_debug_message(enable_skip)
	
}

if room == Tutorial {
	
	messages = ds_stack_create();
	obj_player_parent.is_disabled = true;
	
	instance_deactivate_object(obj_basic_enemy);
	ds_stack_push(messages, 
		"Good work, soldier! Now, you're ready for the real deal!", ////6 skip by space
		"Shoot the Reds with left click to fire your weapons\nQ to switch weapons and if you ever run out of bullets, R to reaload", //5 
		"Good work, Soldier now lets get some target practice!", // 4 skip by space
		"Press WASD to move around, and mouse to face a new direction", //3
		"Today you learn how to handle yourself in ground combat", //2 skip by space
		"Welcome to the range Soldier", //1 skip by space
	)
	
	dialog_count = 0;
	enable_dialog = true;
	enable_skip = false;
	_skips = [1,2,4,6];
	
	obj_dialog.text = ds_stack_pop(messages);
	dialog_count +=1;
	enable_skip = array_contains(_skips,dialog_count);
	show_debug_message(dialog_count)
	show_debug_message(enable_skip)
}



