/// @description Insert description here
// You can write your code in this editor

if hp <= 0 {
	instance_destroy();
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
