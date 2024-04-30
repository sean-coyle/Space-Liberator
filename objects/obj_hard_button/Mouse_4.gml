/// @description Insert description here
// You can write your code in this editor
show_debug_message("In CLick Event")
global.difficulty  = 3;
if (global.lastWinLevel != -2 and global.lastWinLevel != -4) {
	global.level = 0;
	obj_level_controller.isEnabled = true;
} else {
	show_debug_message("In CLick Tutorial")
	obj_level_controller.isEnabled = true
	global.level = -4;
}





