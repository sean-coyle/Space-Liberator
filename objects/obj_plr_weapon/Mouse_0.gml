if instance_exists(obj_player_parent) {
	if !alarm[0] and obj_player_parent.current_weapon == id {
		
		if _ammo_count > 0 {
			var _inst = instance_create_layer(x,y, "Instances", ammo_type, _ammo_props);
			with (_inst) {
				direction = obj_player_parent._facing_direction;
				image_angle = obj_player_parent._facing_direction;
			
				dest_x = mouse_x;
				dest_y = mouse_y;
			}
	
			alarm[0] = fire_rate;
		}
		
	}
}