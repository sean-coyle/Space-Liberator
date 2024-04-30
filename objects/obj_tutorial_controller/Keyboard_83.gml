/// @description Insert description here
// You can write your code in thi
if(not enable_skip){
	
	if(dialog_count == 3){
		obj_dialog.text = ds_stack_pop(messages);
		dialog_count +=1;
	}
	enable_skip = array_contains(_skips, dialog_count);
	show_debug_message(dialog_count)
	show_debug_message(enable_skip)
	
}


