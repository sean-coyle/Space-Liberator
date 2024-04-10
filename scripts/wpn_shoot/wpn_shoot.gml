// THIS SHOULD ONLY BE CALLED BY obj_plr_weapon OR ITS CHILDREN


function wpn_shoot(){
	_ammo_props = {
		direction: self.direction,
		image_angle: self.direction,
		dest_x: mouse_x,
		dest_y: mouse_y
	}
	
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