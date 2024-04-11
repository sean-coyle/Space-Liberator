// THIS SHOULD ONLY BE CALLED BY obj_plr_weapon OR ITS CHILDREN


function wpn_shoot(_barrel_x = 32, _barrel_y = 16){
	_ammo_props = {
		direction: self.direction,
		image_angle: self.direction,
		dest_x: mouse_x,
		dest_y: mouse_y
	}
	
	if instance_exists(obj_player_parent) {
		if !alarm[0] {
		
			if _ammo_count > 0 {
				var _inst = instance_create_layer(x, y, "Instances", ammo_type, _ammo_props);
				
				var _delta_x = (_barrel_x - sprite_xoffset)
				var _delta_y = (_barrel_y - sprite_yoffset)
				
				var _angle = point_direction(0, 0, _delta_x, _delta_y);
				var _distance = point_distance(0, 0, _delta_x, _delta_y);

				var _xpos = x + lengthdir_x(_distance, image_angle + _angle);
				var _ypos = y + lengthdir_y(_distance, image_angle + _angle);
				
				_inst.x = _xpos
				_inst.y = _ypos
				
//				_ammo_count -= 1
				
				alarm[0] = fire_rate;
			}
		}
	}
}