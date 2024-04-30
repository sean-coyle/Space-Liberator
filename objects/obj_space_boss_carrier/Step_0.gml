/// @description Insert description here
// You can write your code in this editor

if(hp <= 0 ){
	instance_destroy(self);
}

var _player_x = obj_player_parent.x
var _player_y = obj_player_parent.y

var _distance_to_player = point_direction(x,y, _player_x, _player_y);

var followingPath = true;

switch(followingPath){
	case true:
		if(_distance_to_player < 40){
			followingPath = false;
			path_end()
		}
		break;
		
	case false:
	if(_distance_to_player > 40){
			followingPath = true;
	}
	break;
}

if(followingPath){
	path_start(pth_carrier, spd, path_action_reverse, false);
	_can_fire_weapon = true;
} else {
	_can_fire_weapon = false;
	var _angle = point_direction(x,y, _player_x, _player_y);
	var _coward_angle = _angle + 180;
	var _coward_speed = 10;
	
	var _test_x = x + lengthdir_x(_coward_speed, _coward_angle);
	var _test_y = y + lengthdir_y(_coward_speed, _coward_angle);
	
	_test_x = clamp(_test_x, sprite_xoffset, room_width - sprite_xoffset);
	_test_y = clamp(_test_y, sprite_yoffset, room_height - sprite_yoffset);
	
	x = _test_x
	y = _test_y

}

	

if !alarm[0] and _can_fire_weapon {
	var _inst = instance_create_layer(x,y, "Instances", ammo_type);
	with (_inst) {
		direction = other.direction
		image_angle = other.direction
	}
	
	alarm[0] = attack_speed
}


x = clamp(x, sprite_xoffset, room_width - sprite_xoffset);
y = clamp(y, sprite_yoffset, room_height - sprite_yoffset);
