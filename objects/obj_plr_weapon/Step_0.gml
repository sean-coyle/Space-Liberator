if instance_exists(obj_player_parent) {
	x = obj_player_parent.x
	y = obj_player_parent.y
	image_angle = obj_player_parent._facing_direction
	direction = obj_player_parent._facing_direction
}

_ammo_props = {
	direction: self.direction,
	image_angle: self.direction,
	dest_x: mouse_x,
	dest_y: mouse_y
}

if obj_player_parent.current_weapon == id {

	if mouse_check_button(mb_left) {
		if instance_exists(obj_player_parent) {
			if !alarm[0] {
		
				if _ammo_count > 0 {
					var _inst = instance_create_layer(x,y, "Instances", ammo_type, _ammo_props);
					_ammo_count -= 1
				
					alarm[0] = fire_rate;
				}
			}
		}
	}

	if keyboard_check_pressed(ord("R")) {
		if _ammo_count < mag_size {
			if _held_ammo > 0 {
				if _held_ammo >= mag_size {
					_ammo_count += mag_size
					_held_ammo -= mag_size
				} else {
					_ammo_count += _held_ammo
					_held_ammo = 0
				}
			}
		}
	}

}