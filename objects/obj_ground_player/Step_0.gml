/// @description Insert description here
// You can write your code in this editor
event_inherited();

if mouse_check_button_pressed(mb_left) {
	var _inst = instance_create_layer(x,y, "Instances", obj_bullet);
	with (_inst) {
		direction = other._facing_direction
		image_angle = other._facing_direction
	}
}
