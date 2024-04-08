/// @description Insert description here
// You can write your code in this editor

if hp <= 0 {
	instance_destroy();
	//show_debug_message("ouchie i died")
}

x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);
_facing_direction = point_direction(x,y,mouse_x,mouse_y)

image_angle = _facing_direction

if (state == STATES.REGULAR){
	
	var _x_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var _x_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var _y_up =  keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _y_down = keyboard_check(ord("S")) or keyboard_check(vk_down);


	if(_x_right) { 
		x+= player_speed;		
	} 
	if (_x_left) { 
		x-= player_speed; 
	}
	if (_y_up) { 
		y-= player_speed; 
	}
	if (_y_down) { 
		y+= player_speed; 
	}

}

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
	var _inst = instance_create_layer(x,y, "Instances", primary_weapon);
	with (_inst) {
		direction = other._facing_direction
		image_angle = other._facing_direction
	}
	

	alarm[0] = primary_fire_rate
}

// if player is holding down secondary fire button and fire rate time has passed, then fire
if is_firing_secondary and !alarm[0] {
	var _inst = instance_create_layer(x,y, "Instances", secondary_weapon);
	with (_inst) {
		direction = other._facing_direction
		image_angle = other._facing_direction
		dest_x = mouse_x
		dest_y = mouse_y
	}
	
	alarm[0] = secondary_fire_rate
}

//REMOVE LATER
	if(!instance_exists(obj_basic_enemy)){
		room_goto(win)
	}