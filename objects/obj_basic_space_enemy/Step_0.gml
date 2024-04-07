/// @description Insert description here
// You can write your code in this editor

if hp <= 0 {
	instance_destroy()
}

if(instance_exists(obj_player_parent) and !is_stunned) {
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y)
	speed = spd
}

image_angle = direction
