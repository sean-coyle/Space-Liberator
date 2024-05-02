
// Stores the maximum mag_size into the ammo count.

// apply upgrades
max_ammo *= global.max_ammo_multiplier

show_debug_message("Max Ammo: {0}", max_ammo)

// _ammo_count will be decreased each time the weapon is fired
_ammo_count = mag_size

// held ammo decreases when the weapon is reloaded
_held_ammo = max_ammo

// Use this to store info about the ammo variables
// It is used when firing the weapon
_ammo_props = {}

/* Example: This would be used for a grenade. A bullet would not include the dest_*
_ammo_props = {
	direction: obj_player_parent._facing_direction,
	image_angle: obj_player_parent._facing_direction,		
	dest_x: mouse_x,
	dest_y: mouse_y
}
*/