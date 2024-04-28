if hp <= 0 {
	instance_destroy()
}

var _distance_to_player = 0

if instance_exists(obj_player_parent) {
	_distance_to_player = distance_to_object(obj_player_parent)
	direction = point_direction(x, y, obj_player_parent.x, obj_player_parent.y)
}


if(!is_stunned and (_distance_to_player > distance_goal)) {
	speed = spd
	_can_fire_weapon = true
	
} else if _distance_to_player < _safe_distance {
	direction = -direction
	speed = spd
	_can_fire_weapon = false
	
} else {
	speed = 0
	_can_fire_weapon = true
}

image_angle = direction

if !alarm[0] and _can_fire_weapon {
	var _inst = instance_create_layer(x,y, "Instances", ammo_type);
	with (_inst) {
		direction = other.direction
		image_angle = other.direction
	}
	
	alarm[0] = attack_speed
}

_facing_direction = direction