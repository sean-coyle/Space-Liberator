/// @description Insert description here
// You can write your code in this editor
event_inherited();

if mouse_check_button(mb_left) {
	is_firing_primary = true
} else {
	is_firing_primary = false
}

if mouse_check_button(mb_right) {
	is_firing_secondary = true
} else {
	is_firing_secondary = false
}

// if player is holding down fire button and fire rate time has passed, then fire
if is_firing_primary and !alarm[0] {
	var _inst = instance_create_layer(x,y, "Instances", obj_bullet);
	with (_inst) {
		direction = other._facing_direction
		image_angle = other._facing_direction
	}
	
	alarm[0] = primary_fire_rate
}

// if player is holding down secondary fire button and fire rate time has passed, then fire
if is_firing_secondary and !alarm[0] {
	var _inst = instance_create_layer(x,y, "Instances", obj_grenade);
	with (_inst) {
		direction = other._facing_direction
		image_angle = other._facing_direction
		dest_x = mouse_x
		dest_y = mouse_y
	}
	
	alarm[0] = secondary_fire_rate
}

