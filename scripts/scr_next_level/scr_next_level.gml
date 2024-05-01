// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_next_level(){
	global.level = global.lastWinLevel + 1
	obj_level_controller.isEnabled = true
}