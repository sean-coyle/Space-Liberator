/// @description Insert description here
// You can write your code in this editor
var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_width = camera_get_view_width(view_camera[0]);
var _cam_height = camera_get_view_height(view_camera[0]);

var _closest_distance = -1
var _closest_enemy = noone;

with(point_to){
	if(x < _cam_x || x > (_cam_x + _cam_width) || y < _cam_y || y > (_cam_y + _cam_height)){
		var _point_x = _cam_x + _cam_width / 2;
		var _point_y = _cam_y + _cam_height / 2;
		var _dist = point_distance(_point_x, _point_y, x, y);
		
		if(_closest_enemy == noone || _dist < _closest_distance){
			_closest_distance = _dist;
			_closest_enemy = id;
		}
	}
}


var _cam_center_x = _cam_x + _cam_width / 2;
var _cam_center_y = _cam_y + _cam_height / 2;

if(_closest_enemy != noone){

    var _direction = point_direction(_cam_center_x, _cam_center_y, _closest_enemy.x, _closest_enemy.y);
    var _dist_marker = min(_cam_width, _cam_height) / 2; 

    x = _cam_center_x + lengthdir_x(_dist_marker, _direction);
    y = _cam_center_y + lengthdir_y(_dist_marker, _direction);

	image_angle = _direction

    visible = true;  // Show the marker
} else  {
	visible = false;
}
