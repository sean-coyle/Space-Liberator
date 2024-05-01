/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_grnd_objectives_controller) {
	obj_grnd_objectives_controller._completed_objectives += 1
}


show_debug_message("{0}/{1}",obj_grnd_objectives_controller._completed_objectives, obj_grnd_objectives_controller.num_objectives)